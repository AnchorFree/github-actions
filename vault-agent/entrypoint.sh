#!/bin/sh
export VAULT_AGENT_CONFIG_DIR=${VAULT_AGENT_CONFIG_DIR:-.}
export VAULT_TOKEN_FILE=${VAULT_TOKEN_FILE:-"~/.vault-token"}
cd "${VAULT_AGENT_CONFIG_DIR}"

cat << EOF > ${VAULT_AGENT_CONFIG_DIR}/config.hcl
pid_file = "${VAULT_AGENT_CONFIG_DIR}/vault-agent.pidfile"
exit_after_auth = true

auto_auth {
        method "approle" {
                mount_path = "auth/approle"
                config = {
                        role_id_file_path = "${VAULT_AGENT_CONFIG_DIR}/role_id"
                        secret_id_file_path = "${VAULT_AGENT_CONFIG_DIR}/secret_id"
                        remove_secret_id_file_after_reading = "true"
                }
        }

        sink "file" {
                config = {
                        path = "${VAULT_TOKEN_FILE}"
			mode = 0644
                }
        }
}
EOF

cat << EOF > ${VAULT_AGENT_CONFIG_DIR}/role_id
${VAULT_ROLE_ID}
EOF

cat << EOF > ${VAULT_AGENT_CONFIG_DIR}/secret_id
${VAULT_SECRET_ID}
EOF

vault agent -config ${VAULT_AGENT_CONFIG_DIR}/config.hcl

/*
 * Copyright (c) 2023 Airbyte, Inc., all rights reserved.
 */

package io.airbyte.integrations.source.mysql_strict_encrypt;

import com.google.common.collect.ImmutableMap;
import io.airbyte.cdk.db.jdbc.JdbcUtils;

public class MySqlSslCaCertificateStrictEncryptSourceAcceptanceTest extends AbstractMySqlSslCertificateStrictEncryptSourceAcceptanceTest {

  @Override
  public ImmutableMap getSslConfig() {
    return ImmutableMap.builder()
        .put(JdbcUtils.MODE_KEY, "verify_ca")
        .put("ca_certificate", certs.getCaCertificate())
        .put("client_key_password", PASSWORD)
        .build();
  }

}

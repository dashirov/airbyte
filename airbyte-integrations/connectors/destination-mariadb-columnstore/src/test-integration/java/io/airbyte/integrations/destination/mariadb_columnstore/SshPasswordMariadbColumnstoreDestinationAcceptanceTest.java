/*
 * Copyright (c) 2023 Airbyte, Inc., all rights reserved.
 */

package io.airbyte.integrations.destination.mariadb_columnstore;

import io.airbyte.cdk.integrations.base.ssh.SshTunnel;

public class SshPasswordMariadbColumnstoreDestinationAcceptanceTest extends SshMariadbColumnstoreDestinationAcceptanceTest {

  @Override
  public SshTunnel.TunnelMethod getTunnelMethod() {
    return SshTunnel.TunnelMethod.SSH_PASSWORD_AUTH;
  }

}

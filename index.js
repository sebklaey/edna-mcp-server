#!/usr/bin/env node
/**
 * EDNA MCP server (stdio transport).
 *
 * Thin stdio wrapper around the EDNA engine's MCP server, published as the
 * npm package `edna-engine` (EPCAL-1.0, Sebastian Kläy). The engine performs
 * all behavioral-biometric capture and scoring on the user's own device —
 * zero raw biometrics ever leave the device.
 *
 * Evaluation/testing runs without a license key; set EDNA_LICENSE_KEY for
 * commercial/production use. See https://openos.space and LICENSE.
 */
process.title = 'edna-mcp-server';
require('edna-engine/mcp-server');

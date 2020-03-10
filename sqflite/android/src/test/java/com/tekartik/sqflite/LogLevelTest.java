package com.davidmartos96.sqflite_sqlcipher;

import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

/**
 * Constants between dart & Java world
 */

public class LogLevelTest {


    @Test
    public void hasSqlLogLevel() {
        assertTrue(LogLevel.hasSqlLevel(1));
        assertFalse(LogLevel.hasSqlLevel(0));
    }
}

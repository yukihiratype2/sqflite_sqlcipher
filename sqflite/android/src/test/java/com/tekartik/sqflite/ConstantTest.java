package com.davidmartos96.sqflite_sqlcipher;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

/**
 * Constants between dart & Java world
 */

public class ConstantTest {


    @Test
    public void key() {
        assertEquals("com.davidmartos96.sqflite_sqlcipher", Constant.PLUGIN_KEY);

    }
}

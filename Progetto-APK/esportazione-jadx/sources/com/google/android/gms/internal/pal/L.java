package com.google.android.gms.internal.pal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class L extends IOException {
    public static K a() {
        return new K("Protocol message tag had invalid wire type.");
    }

    public static L b() {
        return new L("Protocol message had invalid UTF-8.");
    }

    public static L c() {
        return new L("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static L d() {
        return new L("Failed to parse the message.");
    }

    public static L e() {
        return new L("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}

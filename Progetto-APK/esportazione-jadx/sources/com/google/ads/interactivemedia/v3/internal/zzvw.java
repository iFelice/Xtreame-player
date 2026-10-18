package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class zzvw {
    @Deprecated
    public zzvw() {
    }

    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            zzace zzaceVar = new zzace(stringWriter);
            zzaceVar.zzr(zzwg.LENIENT);
            zzabh.zzV.write(zzaceVar, this);
            return stringWriter.toString();
        } catch (IOException e8) {
            throw new AssertionError(e8);
        }
    }
}

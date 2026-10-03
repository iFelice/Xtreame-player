package com.google.ads.interactivemedia.v3.internal;

import java.util.Objects;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzvl {
    public static final zzvl zza = new zzvl(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, false);
    private final String zzb;
    private final String zzc;
    private final boolean zzd;

    static {
        new zzvl("\n", "  ", true);
    }

    private zzvl(String str, String str2, boolean z7) {
        Objects.requireNonNull(str, "newline == null");
        Objects.requireNonNull(str2, "indent == null");
        if (!str.matches("[\r\n]*")) {
            throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
        }
        if (!str2.matches("[ \t]*")) {
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z7;
    }

    public final String zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final boolean zzc() {
        return this.zzd;
    }
}

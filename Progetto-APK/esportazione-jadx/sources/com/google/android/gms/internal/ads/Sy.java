package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class Sy {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f16562g = new UUID(0, 0).toString();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f16566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f16567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Ry f16568f;

    public Sy(Context context, String str, String str2, String str3) {
        if (Ry.f16380c == null) {
            Ry.f16380c = new Ry(context);
        }
        this.f16568f = Ry.f16380c;
        this.f16563a = str;
        this.f16564b = str.concat("_3p");
        this.f16565c = str2;
        this.f16566d = str2.concat("_3p");
        this.f16567e = str3;
    }

    public final C0871Om a(long j8, String str, String str2, boolean z7) throws IOException {
        String str3 = this.f16564b;
        int i8 = 21;
        Ry ry = this.f16568f;
        if (str != null) {
            try {
                UUID.fromString(str);
                if (!str.equals(f16562g)) {
                    String string = ry.f16382b.getString(str3, null);
                    String string2 = ry.f16382b.getString("paid_3p_hash_key", null);
                    if (string != null && string2 != null && !string.equals(e(str, str2, string2))) {
                        return b(str, str2);
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            return new C0871Om(21);
        }
        boolean z8 = str != null;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < 0) {
            throw new IllegalStateException(this.f16567e.concat(": Invalid negative current timestamp. Updating PAID failed"));
        }
        String str4 = this.f16565c;
        String str5 = this.f16566d;
        long j9 = ry.f16382b.getLong(z8 ? str5 : str4, -1L);
        if (j9 != -1) {
            if (jCurrentTimeMillis < j9) {
                ry.a(Long.valueOf(jCurrentTimeMillis), z8 ? str5 : str4);
            } else if (jCurrentTimeMillis >= j9 + j8) {
                return b(str, str2);
            }
        }
        if (!z8) {
            str3 = this.f16563a;
        }
        String string3 = ry.f16382b.getString(str3, null);
        if (string3 == null && !z7) {
            return b(str, str2);
        }
        if (z8) {
            str4 = str5;
        }
        return new C0871Om(i8, string3, Instant.ofEpochMilli(ry.f16382b.getLong(str4, -1L)));
    }

    public final C0871Om b(String str, String str2) throws IOException {
        if (str == null) {
            return c(UUID.randomUUID().toString(), false);
        }
        String string = UUID.randomUUID().toString();
        this.f16568f.a(string, "paid_3p_hash_key");
        return c(e(str, str2, string), true);
    }

    public final C0871Om c(String str, boolean z7) throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < 0) {
            throw new IllegalStateException(this.f16567e.concat(": Invalid negative current timestamp. Updating PAID failed"));
        }
        String str2 = z7 ? this.f16566d : this.f16565c;
        Long lValueOf = Long.valueOf(jCurrentTimeMillis);
        Ry ry = this.f16568f;
        ry.a(lValueOf, str2);
        ry.a(str, z7 ? this.f16564b : this.f16563a);
        return new C0871Om(21, str, Instant.ofEpochMilli(jCurrentTimeMillis));
    }

    public final void d(boolean z7) {
        String str = z7 ? this.f16566d : this.f16565c;
        Ry ry = this.f16568f;
        ry.b(str);
        ry.b(z7 ? this.f16564b : this.f16563a);
    }

    public final String e(String str, String str2, String str3) {
        if (str2 != null && str3 != null) {
            return UUID.nameUUIDFromBytes(com.google.protobuf.U2.l(str, str2, str3).getBytes(StandardCharsets.UTF_8)).toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f16567e);
        sb.append(": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is ");
        sb.append(str2 == null ? "null" : "not null");
        sb.append(", hashKey is ");
        sb.append(str3 == null ? "null" : "not null");
        throw new IllegalArgumentException(sb.toString());
    }
}

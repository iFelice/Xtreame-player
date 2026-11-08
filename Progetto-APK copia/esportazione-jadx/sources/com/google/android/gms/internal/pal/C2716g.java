package com.google.android.gms.internal.pal;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2716g implements Closeable, Flushable {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Pattern f23820M = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final String[] f23821N = new String[128];

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Writer f23822G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int[] f23823H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23824I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f23825J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f23826K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f23827L;

    static {
        for (int i8 = 0; i8 <= 31; i8++) {
            f23821N[i8] = String.format("\\u%04x", Integer.valueOf(i8));
        }
        String[] strArr = f23821N;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C2716g(StringWriter stringWriter) {
        int[] iArr = new int[32];
        this.f23823H = iArr;
        this.f23824I = 0;
        if (iArr.length == 0) {
            this.f23823H = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f23823H;
        int i8 = this.f23824I;
        this.f23824I = i8 + 1;
        iArr2[i8] = 6;
        this.f23825J = ":";
        this.f23822G = stringWriter;
    }

    public final void E(int i8, int i9, char c8) throws IOException {
        int iK = k();
        if (iK != i9 && iK != i8) {
            throw new IllegalStateException("Nesting problem.");
        }
        String str = this.f23827L;
        if (str != null) {
            throw new IllegalStateException("Dangling name: ".concat(str));
        }
        this.f23824I--;
        this.f23822G.write(c8);
    }

    public final void N() throws IOException {
        int iK = k();
        if (iK == 1) {
            this.f23823H[this.f23824I - 1] = 2;
            return;
        }
        Writer writer = this.f23822G;
        if (iK == 2) {
            writer.append(',');
            return;
        }
        if (iK == 4) {
            writer.append((CharSequence) this.f23825J);
            this.f23823H[this.f23824I - 1] = 5;
            return;
        }
        if (iK != 6) {
            if (iK != 7) {
                throw new IllegalStateException("Nesting problem.");
            }
            if (!this.f23826K) {
                throw new IllegalStateException("JSON must have only one top-level value.");
            }
        }
        this.f23823H[this.f23824I - 1] = 7;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002d  */
    public final void O(String str) throws IOException {
        String str2;
        Writer writer = this.f23822G;
        writer.write(34);
        int length = str.length();
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            char cCharAt = str.charAt(i9);
            if (cCharAt < 128) {
                str2 = f23821N[cCharAt];
                if (str2 != null) {
                    if (i8 < i9) {
                        writer.write(str, i8, i9 - i8);
                    }
                    writer.write(str2);
                    i8 = i9 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i8 < i9) {
                    writer.write(str, i8, i9 - i8);
                }
                writer.write(str2);
                i8 = i9 + 1;
            }
        }
        if (i8 < length) {
            writer.write(str, i8, length - i8);
        }
        writer.write(34);
    }

    public final void a0() throws IOException {
        if (this.f23827L != null) {
            int iK = k();
            if (iK == 5) {
                this.f23822G.write(44);
            } else if (iK != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            this.f23823H[this.f23824I - 1] = 4;
            O(this.f23827L);
            this.f23827L = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f23822G.close();
        int i8 = this.f23824I;
        if (i8 > 1 || (i8 == 1 && this.f23823H[0] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f23824I = 0;
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.f23824I == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f23822G.flush();
    }

    public final int k() {
        int i8 = this.f23824I;
        if (i8 != 0) {
            return this.f23823H[i8 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }
}

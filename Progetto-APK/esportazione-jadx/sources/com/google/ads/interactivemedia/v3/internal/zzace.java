package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class zzace implements Closeable, Flushable {
    private static final Pattern zza = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");
    private static final String[] zzb = new String[128];
    private static final String[] zzc;
    private final Writer zzd;
    private int[] zze = new int[32];
    private int zzf = 0;
    private zzvl zzg;
    private String zzh;
    private String zzi;
    private boolean zzj;
    private zzwg zzk;
    private boolean zzl;
    private String zzm;
    private boolean zzn;

    static {
        for (int i8 = 0; i8 <= 31; i8++) {
            zzb[i8] = String.format("\\u%04x", Integer.valueOf(i8));
        }
        String[] strArr = zzb;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        zzc = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public zzace(Writer writer) {
        zzz(6);
        this.zzk = zzwg.LEGACY_STRICT;
        this.zzn = true;
        Objects.requireNonNull(writer, "out == null");
        this.zzd = writer;
        zzo(zzvl.zza);
    }

    private final void zzA(int i8) {
        this.zze[this.zzf - 1] = i8;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    private final void zzB(String str) throws IOException {
        String str2;
        String[] strArr = this.zzl ? zzc : zzb;
        this.zzd.write(34);
        int length = str.length();
        int i8 = 0;
        int i9 = 0;
        while (i8 < length) {
            int i10 = i8 + 1;
            char cCharAt = str.charAt(i8);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i9 < i8) {
                        this.zzd.write(str, i9, i8 - i9);
                    }
                    this.zzd.write(str2);
                    i9 = i10;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i9 < i8) {
                    this.zzd.write(str, i9, i8 - i9);
                }
                this.zzd.write(str2);
                i9 = i10;
            }
            i8 = i10;
        }
        if (i9 < length) {
            this.zzd.write(str, i9, length - i9);
        }
        this.zzd.write(34);
    }

    private final void zzC() throws IOException {
        if (this.zzm != null) {
            int iZza = zza();
            if (iZza == 5) {
                this.zzd.write(this.zzi);
            } else if (iZza != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            zzy();
            zzA(4);
            zzB(this.zzm);
            this.zzm = null;
        }
    }

    private final int zza() {
        int i8 = this.zzf;
        if (i8 != 0) {
            return this.zze[i8 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private final zzace zzv(int i8, int i9, char c8) throws IOException {
        int iZza = zza();
        if (iZza != i9 && iZza != i8) {
            throw new IllegalStateException("Nesting problem.");
        }
        String str = this.zzm;
        if (str != null) {
            throw new IllegalStateException("Dangling name: ".concat(str));
        }
        this.zzf--;
        if (iZza == i9) {
            zzy();
        }
        this.zzd.write(c8);
        return this;
    }

    private final zzace zzw(int i8, char c8) throws IOException {
        zzx();
        zzz(i8);
        this.zzd.write(c8);
        return this;
    }

    private final void zzx() throws IOException {
        int iZza = zza();
        if (iZza == 1) {
            zzA(2);
            zzy();
            return;
        }
        if (iZza == 2) {
            this.zzd.append((CharSequence) this.zzi);
            zzy();
        } else {
            if (iZza == 4) {
                this.zzd.append((CharSequence) this.zzh);
                zzA(5);
                return;
            }
            if (iZza != 6) {
                if (iZza != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (this.zzk != zzwg.LENIENT) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            zzA(7);
        }
    }

    private final void zzy() throws IOException {
        if (this.zzj) {
            return;
        }
        this.zzd.write(this.zzg.zzb());
        int i8 = this.zzf;
        for (int i9 = 1; i9 < i8; i9++) {
            this.zzd.write(this.zzg.zza());
        }
    }

    private final void zzz(int i8) {
        int i9 = this.zzf;
        int[] iArr = this.zze;
        if (i9 == iArr.length) {
            this.zze = Arrays.copyOf(iArr, i9 + i9);
        }
        int[] iArr2 = this.zze;
        int i10 = this.zzf;
        this.zzf = i10 + 1;
        iArr2[i10] = i8;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzd.close();
        int i8 = this.zzf;
        if (i8 > 1 || (i8 == 1 && this.zze[0] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.zzf = 0;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.zzf == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.zzd.flush();
    }

    public zzace zzb() throws IOException {
        zzC();
        zzw(1, '[');
        return this;
    }

    public zzace zzc() throws IOException {
        zzC();
        zzw(3, '{');
        return this;
    }

    public zzace zzd() throws IOException {
        zzv(1, 2, ']');
        return this;
    }

    public zzace zze() throws IOException {
        zzv(3, 5, '}');
        return this;
    }

    public zzace zzf(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.zzm != null) {
            throw new IllegalStateException("Already wrote a name, expecting a value.");
        }
        int iZza = zza();
        if (iZza != 3 && iZza != 5) {
            throw new IllegalStateException("Please begin an object before writing a name.");
        }
        this.zzm = str;
        return this;
    }

    public zzace zzg() throws IOException {
        if (this.zzm != null) {
            if (!this.zzn) {
                this.zzm = null;
                return this;
            }
            zzC();
        }
        zzx();
        this.zzd.write("null");
        return this;
    }

    public zzace zzh(double d6) throws IOException {
        zzC();
        if (this.zzk == zzwg.LENIENT || !(Double.isNaN(d6) || Double.isInfinite(d6))) {
            zzx();
            this.zzd.append((CharSequence) Double.toString(d6));
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + d6);
    }

    public zzace zzi(long j8) throws IOException {
        zzC();
        zzx();
        this.zzd.write(Long.toString(j8));
        return this;
    }

    public zzace zzj(Boolean bool) throws IOException {
        if (bool == null) {
            zzg();
            return this;
        }
        zzC();
        zzx();
        this.zzd.write(true != bool.booleanValue() ? "false" : "true");
        return this;
    }

    public zzace zzk(Number number) throws IOException {
        if (number == null) {
            zzg();
            return this;
        }
        zzC();
        String string = number.toString();
        Class<?> cls = number.getClass();
        if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
            if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
                if (this.zzk != zzwg.LENIENT) {
                    throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(string));
                }
            } else if (cls != Float.class && cls != Double.class && !zza.matcher(string).matches()) {
                throw new IllegalArgumentException(U2.m("String created by ", String.valueOf(cls), " is not a valid JSON number: ", string));
            }
        }
        zzx();
        this.zzd.append((CharSequence) string);
        return this;
    }

    public zzace zzl(String str) throws IOException {
        if (str == null) {
            zzg();
            return this;
        }
        zzC();
        zzx();
        zzB(str);
        return this;
    }

    public zzace zzm(boolean z7) throws IOException {
        zzC();
        zzx();
        this.zzd.write(true != z7 ? "false" : "true");
        return this;
    }

    public final zzwg zzn() {
        return this.zzk;
    }

    public final void zzo(zzvl zzvlVar) {
        Objects.requireNonNull(zzvlVar);
        this.zzg = zzvlVar;
        this.zzi = ",";
        if (zzvlVar.zzc()) {
            this.zzh = ": ";
            if (this.zzg.zzb().isEmpty()) {
                this.zzi = ", ";
            }
        } else {
            this.zzh = ":";
        }
        boolean z7 = false;
        if (this.zzg.zzb().isEmpty() && this.zzg.zza().isEmpty()) {
            z7 = true;
        }
        this.zzj = z7;
    }

    public final void zzp(boolean z7) {
        this.zzl = z7;
    }

    public final void zzq(boolean z7) {
        this.zzn = z7;
    }

    public final void zzr(zzwg zzwgVar) {
        Objects.requireNonNull(zzwgVar);
        this.zzk = zzwgVar;
    }

    public final boolean zzs() {
        return this.zzn;
    }

    public final boolean zzt() {
        return this.zzl;
    }

    public final boolean zzu() {
        return this.zzk == zzwg.LENIENT;
    }
}

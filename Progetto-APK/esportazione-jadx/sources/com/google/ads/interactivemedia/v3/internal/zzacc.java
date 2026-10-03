package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public class zzacc implements Closeable {
    private final Reader zzb;
    private long zzi;
    private int zzj;
    private String zzk;
    private int[] zzl;
    private String[] zzn;
    private int[] zzo;
    private zzwg zzc = zzwg.LEGACY_STRICT;
    private final char[] zzd = new char[1024];
    private int zze = 0;
    private int zzf = 0;
    private int zzg = 0;
    private int zzh = 0;
    int zza = 0;
    private int zzm = 1;

    static {
        zzxp.zza = new zzacb();
    }

    public zzacc(Reader reader) {
        int[] iArr = new int[32];
        this.zzl = iArr;
        iArr[0] = 6;
        this.zzn = new String[32];
        this.zzo = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.zzb = reader;
    }

    private String zzA(boolean z7) {
        StringBuilder sb = new StringBuilder("$");
        int i8 = 0;
        while (true) {
            int i9 = this.zzm;
            if (i8 >= i9) {
                return sb.toString();
            }
            int i10 = this.zzl[i8];
            switch (i10) {
                case 1:
                case 2:
                    int i11 = this.zzo[i8];
                    if (z7 && i11 > 0 && i8 == i9 - 1) {
                        i11--;
                    }
                    sb.append('[');
                    sb.append(i11);
                    sb.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb.append('.');
                    String str = this.zzn[i8];
                    if (str != null) {
                        sb.append(str);
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    throw new AssertionError(r.f("Unknown scope value: ", i10));
            }
            i8++;
        }
    }

    private final String zzB(char c8) throws zzacf {
        char[] cArr;
        StringBuilder sb = null;
        do {
            int i8 = this.zze;
            int i9 = this.zzf;
            int i10 = i8;
            while (true) {
                cArr = this.zzd;
                if (i8 < i9) {
                    int i11 = i8 + 1;
                    char c9 = cArr[i8];
                    if (this.zzc == zzwg.STRICT && c9 < ' ') {
                        throw zzy("Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode");
                    }
                    if (c9 == c8) {
                        int i12 = (i11 - i10) - 1;
                        this.zze = i11;
                        if (sb == null) {
                            return new String(cArr, i10, i12);
                        }
                        sb.append(cArr, i10, i12);
                        return sb.toString();
                    }
                    if (c9 == '\\') {
                        int i13 = i11 - i10;
                        int i14 = i13 - 1;
                        this.zze = i11;
                        if (sb == null) {
                            sb = new StringBuilder(Math.max(i13 + i13, 16));
                        }
                        sb.append(cArr, i10, i14);
                        sb.append(zzd());
                        i10 = this.zze;
                        i9 = this.zzf;
                        i8 = i10;
                    } else {
                        if (c9 == '\n') {
                            this.zzg++;
                            this.zzh = i11;
                        }
                        i8 = i11;
                    }
                }
            }
            int i15 = i8 - i10;
            if (sb == null) {
                sb = new StringBuilder(Math.max(i15 + i15, 16));
            }
            sb.append(cArr, i10, i15);
            this.zze = i8;
        } while (zzI(1));
        throw zzy("Unterminated string");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    private final String zzC() throws zzacf {
        String string;
        int i8 = 0;
        StringBuilder sb = null;
        while (true) {
            int i9 = 0;
            while (true) {
                int i10 = this.zze + i9;
                if (i10 < this.zzf) {
                    char c8 = this.zzd[i10];
                    if (c8 != '\t' && c8 != '\n' && c8 != '\f' && c8 != '\r' && c8 != ' ') {
                        if (c8 != '#') {
                            if (c8 != ',') {
                                if (c8 != '/' && c8 != '=') {
                                    if (c8 != '{' && c8 != '}' && c8 != ':') {
                                        if (c8 != ';') {
                                            switch (c8) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i9++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        zzD();
                    }
                    i8 = i9;
                } else if (i9 >= 1024) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i9, 16));
                    }
                    sb.append(this.zzd, this.zze, i9);
                    this.zze += i9;
                    if (!zzI(1)) {
                    }
                } else if (!zzI(i9 + 1)) {
                    i8 = i9;
                }
                if (sb == null) {
                    string = new String(this.zzd, this.zze, i8);
                } else {
                    sb.append(this.zzd, this.zze, i8);
                    string = sb.toString();
                }
                this.zze += i8;
                return string;
            }
        }
    }

    private final void zzD() throws zzacf {
        if (this.zzc != zzwg.LENIENT) {
            throw zzy("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        }
    }

    private final void zzE(int i8) throws zzacf {
        int i9 = this.zzm;
        if (i9 - 1 >= 1280) {
            throw new zzacf(p148t.a.c("Nesting limit 1280 reached", zzv()));
        }
        int[] iArr = this.zzl;
        if (i9 == iArr.length) {
            int i10 = i9 + i9;
            this.zzl = Arrays.copyOf(iArr, i10);
            this.zzo = Arrays.copyOf(this.zzo, i10);
            this.zzn = (String[]) Arrays.copyOf(this.zzn, i10);
        }
        int[] iArr2 = this.zzl;
        int i11 = this.zzm;
        this.zzm = i11 + 1;
        iArr2[i11] = i8;
    }

    private final void zzF(char c8) throws zzacf {
        do {
            int i8 = this.zze;
            int i9 = this.zzf;
            while (i8 < i9) {
                int i10 = i8 + 1;
                char c9 = this.zzd[i8];
                if (c9 == c8) {
                    this.zze = i10;
                    return;
                }
                if (c9 == '\\') {
                    this.zze = i10;
                    zzd();
                    i8 = this.zze;
                    i9 = this.zzf;
                } else {
                    if (c9 == '\n') {
                        this.zzg++;
                        this.zzh = i10;
                    }
                    i8 = i10;
                }
            }
            this.zze = i8;
        } while (zzI(1));
        throw zzy("Unterminated string");
    }

    private final void zzG() {
        char c8;
        do {
            if (this.zze >= this.zzf && !zzI(1)) {
                return;
            }
            char[] cArr = this.zzd;
            int i8 = this.zze;
            int i9 = i8 + 1;
            this.zze = i9;
            c8 = cArr[i8];
            if (c8 == '\n') {
                this.zzg++;
                this.zzh = i9;
                return;
            }
        } while (c8 != '\r');
    }

    private final void zzH() throws zzacf {
        do {
            int i8 = 0;
            while (true) {
                int i9 = this.zze + i8;
                if (i9 < this.zzf) {
                    char c8 = this.zzd[i9];
                    if (c8 != '\t' && c8 != '\n' && c8 != '\f' && c8 != '\r' && c8 != ' ') {
                        if (c8 != '#') {
                            if (c8 != ',') {
                                if (c8 != '/' && c8 != '=') {
                                    if (c8 != '{' && c8 != '}' && c8 != ':') {
                                        if (c8 != ';') {
                                            switch (c8) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i8++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        zzD();
                    }
                    this.zze += i8;
                    return;
                }
                this.zze = i9;
            }
        } while (zzI(1));
    }

    private final boolean zzI(int i8) throws IOException {
        int i9;
        int i10 = this.zzh;
        int i11 = this.zze;
        this.zzh = i10 - i11;
        char[] cArr = this.zzd;
        int i12 = this.zzf;
        if (i12 != i11) {
            int i13 = i12 - i11;
            this.zzf = i13;
            System.arraycopy(cArr, i11, cArr, 0, i13);
        } else {
            this.zzf = 0;
        }
        this.zze = 0;
        do {
            Reader reader = this.zzb;
            int i14 = this.zzf;
            int i15 = reader.read(cArr, i14, 1024 - i14);
            if (i15 == -1) {
                return false;
            }
            i9 = this.zzf + i15;
            this.zzf = i9;
            if (this.zzg == 0 && this.zzh == 0 && i9 > 0 && cArr[0] == 65279) {
                this.zze++;
                this.zzh = 1;
                i8++;
            }
        } while (i9 < i8);
        return true;
    }

    private final boolean zzJ(char c8) throws zzacf {
        if (c8 == '\t' || c8 == '\n' || c8 == '\f' || c8 == '\r' || c8 == ' ') {
            return false;
        }
        if (c8 != '#') {
            if (c8 == ',') {
                return false;
            }
            if (c8 != '/' && c8 != '=') {
                if (c8 == '{' || c8 == '}' || c8 == ':') {
                    return false;
                }
                if (c8 != ';') {
                    switch (c8) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        zzD();
        return false;
    }

    private final char zzd() throws zzacf {
        int i8;
        if (this.zze == this.zzf && !zzI(1)) {
            throw zzy("Unterminated escape sequence");
        }
        char[] cArr = this.zzd;
        int i9 = this.zze;
        int i10 = i9 + 1;
        this.zze = i10;
        char c8 = cArr[i9];
        if (c8 != '\n') {
            if (c8 != '\"') {
                if (c8 != '\'') {
                    if (c8 != '/' && c8 != '\\') {
                        if (c8 == 'b') {
                            return '\b';
                        }
                        if (c8 == 'f') {
                            return '\f';
                        }
                        if (c8 == 'n') {
                            return '\n';
                        }
                        if (c8 == 'r') {
                            return '\r';
                        }
                        if (c8 == 't') {
                            return '\t';
                        }
                        if (c8 != 'u') {
                            throw zzy("Invalid escape sequence");
                        }
                        if (i9 + 5 > this.zzf && !zzI(4)) {
                            throw zzy("Unterminated escape sequence");
                        }
                        int i11 = this.zze;
                        int i12 = i11 + 4;
                        int i13 = 0;
                        while (i11 < i12) {
                            char[] cArr2 = this.zzd;
                            int i14 = i13 << 4;
                            char c9 = cArr2[i11];
                            if (c9 >= '0' && c9 <= '9') {
                                i8 = c9 - '0';
                            } else if (c9 >= 'a' && c9 <= 'f') {
                                i8 = c9 - 'W';
                            } else {
                                if (c9 < 'A' || c9 > 'F') {
                                    throw zzy("Malformed Unicode escape \\u".concat(new String(cArr2, this.zze, 4)));
                                }
                                i8 = c9 - '7';
                            }
                            i13 = i8 + i14;
                            i11++;
                        }
                        this.zze += 4;
                        return (char) i13;
                    }
                }
            }
            return c8;
        }
        if (this.zzc == zzwg.STRICT) {
            throw zzy("Cannot escape a newline character in strict mode");
        }
        this.zzg++;
        this.zzh = i10;
        if (this.zzc == zzwg.STRICT) {
            throw zzy("Invalid escaped character \"'\" in strict mode");
        }
        return c8;
    }

    private final int zzn(boolean z7) throws IOException {
        int i8 = this.zze;
        int i9 = this.zzf;
        while (true) {
            if (i8 == i9) {
                this.zze = i8;
                if (!zzI(1)) {
                    if (z7) {
                        throw new EOFException("End of input".concat(zzv()));
                    }
                    return -1;
                }
                i8 = this.zze;
                i9 = this.zzf;
            }
            char[] cArr = this.zzd;
            int i10 = i8 + 1;
            char c8 = cArr[i8];
            if (c8 == '\n') {
                this.zzg++;
                this.zzh = i10;
            } else if (c8 != ' ' && c8 != '\r' && c8 != '\t') {
                if (c8 == '/') {
                    this.zze = i10;
                    if (i10 == i9) {
                        this.zze = i8;
                        boolean zZzI = zzI(2);
                        this.zze++;
                        if (!zZzI) {
                            return 47;
                        }
                    }
                    zzD();
                    int i11 = this.zze;
                    char c9 = cArr[i11];
                    if (c9 == '*') {
                        this.zze = i11 + 1;
                        while (true) {
                            if (this.zze + 2 > this.zzf && !zzI(2)) {
                                throw zzy("Unterminated comment");
                            }
                            char[] cArr2 = this.zzd;
                            int i12 = this.zze;
                            if (cArr2[i12] != '\n') {
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= 2) {
                                        i8 = this.zze + 2;
                                        i9 = this.zzf;
                                        break;
                                    }
                                    if (this.zzd[this.zze + i13] != "*/".charAt(i13)) {
                                        break;
                                    }
                                    i13++;
                                }
                            } else {
                                this.zzg++;
                                this.zzh = i12 + 1;
                            }
                            this.zze++;
                        }
                    } else {
                        if (c9 != '/') {
                            return 47;
                        }
                        this.zze = i11 + 1;
                        zzG();
                        i8 = this.zze;
                        i9 = this.zzf;
                    }
                } else {
                    if (c8 != '#') {
                        this.zze = i10;
                        return c8;
                    }
                    this.zze = i10;
                    zzD();
                    zzG();
                    i8 = this.zze;
                    i9 = this.zzf;
                }
            }
            i8 = i10;
        }
    }

    private final zzacf zzy(String str) throws zzacf {
        throw new zzacf(U2.l(str, zzv(), "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#malformed-json"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IllegalStateException zzz(String str) throws IOException {
        int iZzr = zzr();
        StringBuilder sbQ = U2.q("Expected ", str, " but was ", zzacd.zza(zzr()), zzv());
        sbQ.append("\nSee ");
        sbQ.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat(iZzr == 9 ? "adapter-not-null-safe" : "unexpected-json-structure"));
        return new IllegalStateException(sbQ.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zza = 0;
        this.zzl[0] = 8;
        this.zzm = 1;
        this.zzb.close();
    }

    public String toString() {
        return getClass().getSimpleName().concat(zzv());
    }

    public double zza() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs == 15) {
            this.zza = 0;
            int[] iArr = this.zzo;
            int i8 = this.zzm - 1;
            iArr[i8] = iArr[i8] + 1;
            return this.zzi;
        }
        if (iZzs == 16) {
            char[] cArr = this.zzd;
            int i9 = this.zze;
            int i10 = this.zzj;
            this.zzk = new String(cArr, i9, i10);
            this.zze = i9 + i10;
        } else if (iZzs == 8 || iZzs == 9) {
            this.zzk = zzB(iZzs == 8 ? '\'' : '\"');
        } else if (iZzs == 10) {
            this.zzk = zzC();
        } else if (iZzs != 11) {
            throw zzz("a double");
        }
        this.zza = 11;
        double d6 = Double.parseDouble(this.zzk);
        if (this.zzc != zzwg.LENIENT && (Double.isNaN(d6) || Double.isInfinite(d6))) {
            throw zzy("JSON forbids NaN and infinities: " + d6);
        }
        this.zzk = null;
        this.zza = 0;
        int[] iArr2 = this.zzo;
        int i11 = this.zzm - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return d6;
    }

    public int zzb() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs == 15) {
            long j8 = this.zzi;
            int i8 = (int) j8;
            if (j8 == i8) {
                this.zza = 0;
                int[] iArr = this.zzo;
                int i9 = this.zzm - 1;
                iArr[i9] = iArr[i9] + 1;
                return i8;
            }
            throw new NumberFormatException("Expected an int but was " + j8 + zzv());
        }
        if (iZzs == 16) {
            char[] cArr = this.zzd;
            int i10 = this.zze;
            int i11 = this.zzj;
            this.zzk = new String(cArr, i10, i11);
            this.zze = i10 + i11;
        } else {
            if (iZzs != 8 && iZzs != 9 && iZzs != 10) {
                throw zzz("an int");
            }
            if (iZzs == 10) {
                this.zzk = zzC();
            } else {
                this.zzk = zzB(iZzs == 8 ? '\'' : '\"');
            }
            try {
                int i12 = Integer.parseInt(this.zzk);
                this.zza = 0;
                int[] iArr2 = this.zzo;
                int i13 = this.zzm - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        }
        this.zza = 11;
        double d6 = Double.parseDouble(this.zzk);
        int i14 = (int) d6;
        if (i14 != d6) {
            throw new NumberFormatException(r.g("Expected an int but was ", this.zzk, zzv()));
        }
        this.zzk = null;
        this.zza = 0;
        int[] iArr3 = this.zzo;
        int i15 = this.zzm - 1;
        iArr3[i15] = iArr3[i15] + 1;
        return i14;
    }

    public long zzc() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs == 15) {
            this.zza = 0;
            int[] iArr = this.zzo;
            int i8 = this.zzm - 1;
            iArr[i8] = iArr[i8] + 1;
            return this.zzi;
        }
        if (iZzs == 16) {
            char[] cArr = this.zzd;
            int i9 = this.zze;
            int i10 = this.zzj;
            this.zzk = new String(cArr, i9, i10);
            this.zze = i9 + i10;
        } else {
            if (iZzs != 8 && iZzs != 9 && iZzs != 10) {
                throw zzz("a long");
            }
            if (iZzs == 10) {
                this.zzk = zzC();
            } else {
                this.zzk = zzB(iZzs == 8 ? '\'' : '\"');
            }
            try {
                long j8 = Long.parseLong(this.zzk);
                this.zza = 0;
                int[] iArr2 = this.zzo;
                int i11 = this.zzm - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return j8;
            } catch (NumberFormatException unused) {
            }
        }
        this.zza = 11;
        double d6 = Double.parseDouble(this.zzk);
        long j9 = (long) d6;
        if (j9 != d6) {
            throw new NumberFormatException(r.g("Expected a long but was ", this.zzk, zzv()));
        }
        this.zzk = null;
        this.zza = 0;
        int[] iArr3 = this.zzo;
        int i12 = this.zzm - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return j9;
    }

    public String zze() {
        return zzA(false);
    }

    public String zzf() {
        return zzA(true);
    }

    public String zzg() throws IOException {
        String strZzB;
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs == 14) {
            strZzB = zzC();
        } else if (iZzs == 12) {
            strZzB = zzB('\'');
        } else {
            if (iZzs != 13) {
                throw zzz("a name");
            }
            strZzB = zzB('\"');
        }
        this.zza = 0;
        this.zzn[this.zzm - 1] = strZzB;
        return strZzB;
    }

    public String zzh() throws IOException {
        String string;
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs == 10) {
            string = zzC();
        } else if (iZzs == 8) {
            string = zzB('\'');
        } else if (iZzs == 9) {
            string = zzB('\"');
        } else if (iZzs == 11) {
            string = this.zzk;
            this.zzk = null;
        } else if (iZzs == 15) {
            string = Long.toString(this.zzi);
        } else {
            if (iZzs != 16) {
                throw zzz("a string");
            }
            String str = new String(this.zzd, this.zze, this.zzj);
            this.zze += this.zzj;
            string = str;
        }
        this.zza = 0;
        int[] iArr = this.zzo;
        int i8 = this.zzm - 1;
        iArr[i8] = iArr[i8] + 1;
        return string;
    }

    public void zzi() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs != 3) {
            throw zzz("BEGIN_ARRAY");
        }
        zzE(1);
        this.zzo[this.zzm - 1] = 0;
        this.zza = 0;
    }

    public void zzj() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs != 1) {
            throw zzz("BEGIN_OBJECT");
        }
        zzE(3);
        this.zza = 0;
    }

    public void zzk() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs != 4) {
            throw zzz("END_ARRAY");
        }
        int i8 = this.zzm;
        this.zzm = i8 - 1;
        int[] iArr = this.zzo;
        int i9 = i8 - 2;
        iArr[i9] = iArr[i9] + 1;
        this.zza = 0;
    }

    public void zzl() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs != 2) {
            throw zzz("END_OBJECT");
        }
        int i8 = this.zzm;
        int i9 = i8 - 1;
        this.zzm = i9;
        this.zzn[i9] = null;
        int[] iArr = this.zzo;
        int i10 = i8 - 2;
        iArr[i10] = iArr[i10] + 1;
        this.zza = 0;
    }

    public void zzm() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs != 7) {
            throw zzz("null");
        }
        this.zza = 0;
        int[] iArr = this.zzo;
        int i8 = this.zzm - 1;
        iArr[i8] = iArr[i8] + 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void zzo() throws IOException {
        int i8 = 0;
        do {
            int iZzs = this.zza;
            if (iZzs == 0) {
                iZzs = zzs();
            }
            switch (iZzs) {
                case 1:
                    zzE(3);
                    i8++;
                    this.zza = 0;
                    break;
                case 2:
                    if (i8 == 0) {
                        this.zzn[this.zzm - 1] = null;
                        i8 = 0;
                    }
                    this.zzm--;
                    i8--;
                    this.zza = 0;
                    break;
                case 3:
                    zzE(1);
                    i8++;
                    this.zza = 0;
                    break;
                case 4:
                    this.zzm--;
                    i8--;
                    this.zza = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.zza = 0;
                    break;
                case 8:
                    zzF('\'');
                    this.zza = 0;
                    break;
                case 9:
                    zzF('\"');
                    this.zza = 0;
                    break;
                case 10:
                    zzH();
                    this.zza = 0;
                    break;
                case 12:
                    zzF('\'');
                    if (i8 == 0) {
                        this.zzn[this.zzm - 1] = "<skipped>";
                        i8 = 0;
                    }
                    this.zza = 0;
                    break;
                case 13:
                    zzF('\"');
                    if (i8 == 0) {
                        this.zzn[this.zzm - 1] = "<skipped>";
                        i8 = 0;
                    }
                    this.zza = 0;
                    break;
                case 14:
                    zzH();
                    if (i8 == 0) {
                        this.zzn[this.zzm - 1] = "<skipped>";
                        i8 = 0;
                    }
                    this.zza = 0;
                    break;
                case 16:
                    this.zze += this.zzj;
                    this.zza = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i8 > 0);
        int[] iArr = this.zzo;
        int i9 = this.zzm - 1;
        iArr[i9] = iArr[i9] + 1;
    }

    public boolean zzp() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        return (iZzs == 2 || iZzs == 4 || iZzs == 17) ? false : true;
    }

    public boolean zzq() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        if (iZzs == 5) {
            this.zza = 0;
            int[] iArr = this.zzo;
            int i8 = this.zzm - 1;
            iArr[i8] = iArr[i8] + 1;
            return true;
        }
        if (iZzs != 6) {
            throw zzz("a boolean");
        }
        this.zza = 0;
        int[] iArr2 = this.zzo;
        int i9 = this.zzm - 1;
        iArr2[i9] = iArr2[i9] + 1;
        return false;
    }

    public int zzr() throws IOException {
        int iZzs = this.zza;
        if (iZzs == 0) {
            iZzs = zzs();
        }
        switch (iZzs) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            default:
                return 10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x016a  */
    /* JADX WARN: Code duplicated, block: B:108:0x0172  */
    /* JADX WARN: Code duplicated, block: B:113:0x0189  */
    /* JADX WARN: Code duplicated, block: B:116:0x019b  */
    /* JADX WARN: Code duplicated, block: B:119:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:122:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:123:0x01b3 A[PHI: r3 r4
      0x01b3: PHI (r3v10 int) = (r3v9 int), (r3v13 int) binds: [B:115:0x0199, B:122:0x01ad] A[DONT_GENERATE, DONT_INLINE]
      0x01b3: PHI (r4v9 int) = (r4v8 int), (r4v10 int) binds: [B:115:0x0199, B:122:0x01ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:125:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:127:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:167:0x021f  */
    /* JADX WARN: Code duplicated, block: B:168:0x0221  */
    /* JADX WARN: Code duplicated, block: B:170:0x0227 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:173:0x022f  */
    /* JADX WARN: Code duplicated, block: B:176:0x0236 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:178:0x0239 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:183:0x0249 A[DONT_INVERT, PHI: r1 r6
      0x0249: PHI (r1v58 char) = (r1v57 char), (r1v61 char) binds: [B:166:0x021d, B:172:0x022c] A[DONT_GENERATE, DONT_INLINE]
      0x0249: PHI (r6v23 char) = (r6v12 char), (r6v24 char) binds: [B:166:0x021d, B:172:0x022c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:184:0x024b  */
    /* JADX WARN: Code duplicated, block: B:197:0x0268  */
    /* JADX WARN: Code duplicated, block: B:199:0x026c  */
    /* JADX WARN: Code duplicated, block: B:202:0x0271  */
    /* JADX WARN: Code duplicated, block: B:207:0x027d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:208:0x027e  */
    /* JADX WARN: Code duplicated, block: B:210:0x028a  */
    /* JADX WARN: Code duplicated, block: B:212:0x0292  */
    /* JADX WARN: Code duplicated, block: B:214:0x0299 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:215:0x029a  */
    /* JADX WARN: Code duplicated, block: B:216:0x029d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:226:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:228:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:243:0x02ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:244:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:246:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:248:0x0304  */
    /* JADX WARN: Code duplicated, block: B:249:0x0307  */
    /* JADX WARN: Code duplicated, block: B:251:0x030c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:253:0x030f  */
    /* JADX WARN: Code duplicated, block: B:255:0x0314  */
    /* JADX WARN: Code duplicated, block: B:257:0x031c  */
    /* JADX WARN: Code duplicated, block: B:266:0x019f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x019f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00e9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:71:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:89:0x012b  */
    /* JADX WARN: Code duplicated, block: B:93:0x013b  */
    /* JADX WARN: Code duplicated, block: B:95:0x0142  */
    /* JADX WARN: Code duplicated, block: B:98:0x014b  */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0236, code lost:
    
        if (r14 == false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x029d, code lost:
    
        if (r4 == 1) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzs() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 801
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.interactivemedia.v3.internal.zzacc.zzs():int");
    }

    public final zzwg zzt() {
        return this.zzc;
    }

    public String zzv() {
        int i8 = this.zzg + 1;
        int i9 = this.zze - this.zzh;
        String strZze = zze();
        StringBuilder sbK = r.k(" at line ", i8, " column ");
        sbK.append(i9 + 1);
        sbK.append(" path ");
        sbK.append(strZze);
        return sbK.toString();
    }

    public final void zzw(zzwg zzwgVar) {
        Objects.requireNonNull(zzwgVar);
        this.zzc = zzwgVar;
    }

    public final boolean zzx() {
        return this.zzc == zzwg.LENIENT;
    }
}

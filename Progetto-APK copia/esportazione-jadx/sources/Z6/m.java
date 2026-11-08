package Z6;

import com.google.protobuf.DescriptorProtos$FileOptions;
import java.io.Serializable;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.ListIterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements Serializable {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final C0471c f8510P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final C0471c f8511Q;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final C0471c f8517W;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f8526G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final TimeZone f8527H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Locale f8528I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f8529J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f8530K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient ArrayList f8531L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Locale f8507M = new Locale("ja", "JP", "JP");

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Comparator f8508N = Comparator.reverseOrder();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final ConcurrentMap[] f8509O = new ConcurrentMap[17];

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final g f8512R = new g(1);

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final g f8513S = new g(3);

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final g f8514T = new g(4);

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final g f8515U = new g(6);

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final g f8516V = new g(5);

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static final g f8518X = new g(8);

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static final g f8519Y = new g(11);

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static final C0471c f8520Z = new C0471c(11, 3);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final C0471c f8521a0 = new C0471c(10, 4);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final g f8522b0 = new g(10);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final g f8523c0 = new g(12);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final g f8524d0 = new g(13);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final g f8525e0 = new g(14);

    static {
        int i8 = 1;
        f8510P = new C0471c(i8, 0);
        int i9 = 2;
        f8511Q = new C0471c(i9, i8);
        f8517W = new C0471c(7, i9);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0074  */
    /* JADX WARN: Code duplicated, block: B:25:0x0077  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0097 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0099  */
    /* JADX WARN: Code duplicated, block: B:32:0x009d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x009f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00be  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:60:0x0102 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x0104  */
    /* JADX WARN: Code duplicated, block: B:62:0x0107  */
    /* JADX WARN: Code duplicated, block: B:83:0x0145  */
    /* JADX WARN: Code duplicated, block: B:89:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0162 A[SYNTHETIC] */
    public m(String str, TimeZone timeZone, Locale locale) {
        int i8;
        j jVar;
        int i9;
        i iVarA;
        this.f8526G = str;
        this.f8527H = timeZone;
        Locale localeA = Y6.a.a(locale);
        this.f8528I = localeA;
        Calendar calendar = Calendar.getInstance(timeZone, localeA);
        if (localeA.equals(f8507M)) {
            i8 = 0;
        } else {
            calendar.setTime(new Date());
            i8 = calendar.get(1) - 80;
        }
        int i10 = (i8 / 100) * 100;
        this.f8529J = i10;
        this.f8530K = i8 - i10;
        this.f8531L = new ArrayList();
        int i11 = 0;
        while (true) {
            String str2 = this.f8526G;
            if (i11 >= str2.length()) {
                jVar = null;
            } else {
                char cCharAt = str2.charAt(i11);
                if ((cCharAt < 'A' || cCharAt > 'Z') && (cCharAt < 'a' || cCharAt > 'z')) {
                    StringBuilder sb = new StringBuilder();
                    boolean z7 = false;
                    while (i11 < str2.length()) {
                        char cCharAt2 = str2.charAt(i11);
                        if (!z7 && ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || (cCharAt2 >= 'a' && cCharAt2 <= 'z'))) {
                            if (!z7) {
                                throw new IllegalArgumentException("Unterminated quote");
                            }
                            String string = sb.toString();
                            jVar = new j(new C0473e(string), string.length());
                        } else if (cCharAt2 != '\'' || ((i11 = i11 + 1) != str2.length() && str2.charAt(i11) == '\'')) {
                            i11++;
                            sb.append(cCharAt2);
                        } else {
                            z7 = !z7;
                        }
                    }
                    if (!z7) {
                        throw new IllegalArgumentException("Unterminated quote");
                    }
                    String string2 = sb.toString();
                    jVar = new j(new C0473e(string2), string2.length());
                } else {
                    int i12 = i11;
                    do {
                        i12++;
                        if (i12 < str2.length()) {
                        }
                        i9 = i12 - i11;
                        if (cCharAt == 'y') {
                            if (i9 > 2) {
                                iVarA = f8512R;
                            } else {
                                iVarA = f8510P;
                            }
                        } else if (cCharAt != 'z') {
                            switch (cCharAt) {
                                case 'D':
                                    iVarA = f8515U;
                                    break;
                                case 'E':
                                    iVarA = a(7, calendar);
                                    break;
                                case 'F':
                                    iVarA = f8518X;
                                    break;
                                case 'G':
                                    iVarA = a(0, calendar);
                                    break;
                                case 'H':
                                    iVarA = f8519Y;
                                    break;
                                default:
                                    switch (cCharAt) {
                                        case 'K':
                                            iVarA = f8522b0;
                                            break;
                                        case 'M':
                                            if (i9 >= 3) {
                                                iVarA = f8511Q;
                                            } else {
                                                iVarA = a(2, calendar);
                                            }
                                            break;
                                        case 'S':
                                            iVarA = f8525e0;
                                            break;
                                        case 'a':
                                            iVarA = a(9, calendar);
                                            break;
                                        case 'd':
                                            iVarA = f8516V;
                                            break;
                                        case 'h':
                                            iVarA = f8521a0;
                                            break;
                                        case 'k':
                                            iVarA = f8520Z;
                                            break;
                                        case 'm':
                                            iVarA = f8523c0;
                                            break;
                                        case 's':
                                            iVarA = f8524d0;
                                            break;
                                        case 'u':
                                            iVarA = f8517W;
                                            break;
                                        case 'w':
                                            iVarA = f8513S;
                                            break;
                                        default:
                                            switch (cCharAt) {
                                                case 'W':
                                                    iVarA = f8514T;
                                                    break;
                                                case 'X':
                                                    if (i9 != 1) {
                                                        iVarA = C0474f.f8496b;
                                                    } else if (i9 != 2) {
                                                        iVarA = C0474f.f8497c;
                                                    } else {
                                                        if (i9 == 3) {
                                                            C0474f c0474f = C0474f.f8496b;
                                                            throw new IllegalArgumentException("invalid number of X");
                                                        }
                                                        iVarA = C0474f.f8498d;
                                                    }
                                                    break;
                                                case 'Y':
                                                    if (i9 > 2) {
                                                        iVarA = f8510P;
                                                    } else {
                                                        iVarA = f8512R;
                                                    }
                                                    break;
                                                case 'Z':
                                                    if (i9 == 2) {
                                                        iVarA = a(15, calendar);
                                                    } else {
                                                        iVarA = C0474f.f8498d;
                                                    }
                                                    break;
                                                default:
                                                    throw new IllegalArgumentException("Format '" + cCharAt + "' not supported");
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            iVarA = a(15, calendar);
                        }
                        jVar = new j(iVarA, i9);
                        i11 = i12;
                    } while (str2.charAt(i12) == cCharAt);
                    i9 = i12 - i11;
                    if (cCharAt == 'y') {
                        if (i9 > 2) {
                            iVarA = f8512R;
                        } else {
                            iVarA = f8510P;
                        }
                    } else if (cCharAt != 'z') {
                        switch (cCharAt) {
                            case 'D':
                                iVarA = f8515U;
                                break;
                            case 'E':
                                iVarA = a(7, calendar);
                                break;
                            case 'F':
                                iVarA = f8518X;
                                break;
                            case 'G':
                                iVarA = a(0, calendar);
                                break;
                            case 'H':
                                iVarA = f8519Y;
                                break;
                            default:
                                switch (cCharAt) {
                                    case 'K':
                                        iVarA = f8522b0;
                                        break;
                                    case 'M':
                                        if (i9 >= 3) {
                                            iVarA = f8511Q;
                                        } else {
                                            iVarA = a(2, calendar);
                                        }
                                        break;
                                    case 'S':
                                        iVarA = f8525e0;
                                        break;
                                    case 'a':
                                        iVarA = a(9, calendar);
                                        break;
                                    case 'd':
                                        iVarA = f8516V;
                                        break;
                                    case 'h':
                                        iVarA = f8521a0;
                                        break;
                                    case 'k':
                                        iVarA = f8520Z;
                                        break;
                                    case 'm':
                                        iVarA = f8523c0;
                                        break;
                                    case 's':
                                        iVarA = f8524d0;
                                        break;
                                    case 'u':
                                        iVarA = f8517W;
                                        break;
                                    case 'w':
                                        iVarA = f8513S;
                                        break;
                                    default:
                                        switch (cCharAt) {
                                            case 'W':
                                                iVarA = f8514T;
                                                break;
                                            case 'X':
                                                if (i9 != 1) {
                                                    iVarA = C0474f.f8496b;
                                                } else if (i9 != 2) {
                                                    iVarA = C0474f.f8497c;
                                                } else {
                                                    if (i9 == 3) {
                                                        C0474f c0474f2 = C0474f.f8496b;
                                                        throw new IllegalArgumentException("invalid number of X");
                                                    }
                                                    iVarA = C0474f.f8498d;
                                                }
                                                break;
                                            case 'Y':
                                                if (i9 > 2) {
                                                    iVarA = f8510P;
                                                } else {
                                                    iVarA = f8512R;
                                                }
                                                break;
                                            case 'Z':
                                                if (i9 == 2) {
                                                    iVarA = a(15, calendar);
                                                } else {
                                                    iVarA = C0474f.f8498d;
                                                }
                                                break;
                                            default:
                                                throw new IllegalArgumentException("Format '" + cCharAt + "' not supported");
                                        }
                                        break;
                                }
                                break;
                        }
                    } else {
                        iVarA = a(15, calendar);
                    }
                    jVar = new j(iVarA, i9);
                    i11 = i12;
                }
            }
            if (jVar == null) {
                return;
            } else {
                this.f8531L.add(jVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002f  */
    public static void c(StringBuilder sb, String str) {
        for (int i8 = 0; i8 < str.length(); i8++) {
            char cCharAt = str.charAt(i8);
            if (cCharAt != '$' && cCharAt != '.' && cCharAt != '?' && cCharAt != '^' && cCharAt != '[' && cCharAt != '\\' && cCharAt != '{' && cCharAt != '|') {
                switch (cCharAt) {
                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    case '+':
                        sb.append('\\');
                        break;
                }
            } else {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        if (sb.charAt(sb.length() - 1) == '.') {
            sb.append('?');
        }
    }

    public final i a(int i8, Calendar calendar) {
        ConcurrentMap concurrentMap;
        ConcurrentMap[] concurrentMapArr = f8509O;
        synchronized (concurrentMapArr) {
            try {
                if (concurrentMapArr[i8] == null) {
                    concurrentMapArr[i8] = new ConcurrentHashMap(3);
                }
                concurrentMap = concurrentMapArr[i8];
            } catch (Throwable th) {
                throw th;
            }
        }
        i lVar = (i) concurrentMap.get(this.f8528I);
        if (lVar == null) {
            lVar = i8 == 15 ? new l(this.f8528I) : new C0472d(i8, calendar, this.f8528I);
            i iVar = (i) concurrentMap.putIfAbsent(this.f8528I, lVar);
            if (iVar != null) {
                return iVar;
            }
        }
        return lVar;
    }

    public final Date b(String str, ParsePosition parsePosition) {
        int i8;
        Calendar calendar = Calendar.getInstance(this.f8527H, this.f8528I);
        calendar.clear();
        ListIterator listIterator = this.f8531L.listIterator();
        while (listIterator.hasNext()) {
            j jVar = (j) listIterator.next();
            if (jVar.f8501a.a() && listIterator.hasNext()) {
                i iVar = ((j) listIterator.next()).f8501a;
                listIterator.previous();
                i8 = iVar.a() ? jVar.f8502b : 0;
            } else {
                i8 = 0;
            }
            if (!jVar.f8501a.b(this, calendar, str, parsePosition, i8)) {
                return null;
            }
        }
        return calendar.getTime();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f8526G.equals(mVar.f8526G) && this.f8527H.equals(mVar.f8527H) && this.f8528I.equals(mVar.f8528I);
    }

    public final int hashCode() {
        return (((this.f8528I.hashCode() * 13) + this.f8527H.hashCode()) * 13) + this.f8526G.hashCode();
    }

    public final String toString() {
        return "FastDateParser[" + this.f8526G + ", " + this.f8528I + ", " + this.f8527H.getID() + "]";
    }
}

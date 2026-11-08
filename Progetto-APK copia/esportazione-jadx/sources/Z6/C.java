package Z6;

import com.google.protobuf.DescriptorProtos$FileOptions;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class C implements Serializable {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final s[] f8474L = new s[0];

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final ConcurrentHashMap f8475M = new ConcurrentHashMap(7);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f8476G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final TimeZone f8477H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Locale f8478I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient s[] f8479J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f8480K;

    /* JADX WARN: Code duplicated, block: B:100:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:101:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:102:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:103:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:105:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:106:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:107:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:109:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:110:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:112:0x0209  */
    /* JADX WARN: Code duplicated, block: B:113:0x020c  */
    /* JADX WARN: Code duplicated, block: B:116:0x0218  */
    /* JADX WARN: Code duplicated, block: B:121:0x023f A[LOOP:2: B:119:0x023b->B:121:0x023f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:125:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x021e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x0249 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x00df  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:56:0x0106  */
    /* JADX WARN: Code duplicated, block: B:58:0x0109  */
    /* JADX WARN: Code duplicated, block: B:62:0x0110 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x0113  */
    /* JADX WARN: Code duplicated, block: B:65:0x0116  */
    /* JADX WARN: Code duplicated, block: B:66:0x011a  */
    /* JADX WARN: Code duplicated, block: B:68:0x011d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x011f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x012a  */
    /* JADX WARN: Code duplicated, block: B:74:0x012d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0130  */
    /* JADX WARN: Code duplicated, block: B:76:0x0135  */
    /* JADX WARN: Code duplicated, block: B:77:0x013c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0146  */
    /* JADX WARN: Code duplicated, block: B:79:0x014d  */
    /* JADX WARN: Code duplicated, block: B:81:0x0151  */
    /* JADX WARN: Code duplicated, block: B:82:0x0154  */
    /* JADX WARN: Code duplicated, block: B:85:0x015b  */
    /* JADX WARN: Code duplicated, block: B:86:0x0161  */
    /* JADX WARN: Code duplicated, block: B:87:0x0166  */
    /* JADX WARN: Code duplicated, block: B:88:0x0171  */
    /* JADX WARN: Code duplicated, block: B:89:0x0178  */
    /* JADX WARN: Code duplicated, block: B:90:0x017f  */
    /* JADX WARN: Code duplicated, block: B:91:0x018b  */
    /* JADX WARN: Code duplicated, block: B:92:0x0199  */
    /* JADX WARN: Code duplicated, block: B:93:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:94:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:95:0x01b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:99:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10, types: [Z6.q] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    public C(String str, TimeZone timeZone, Locale locale) {
        int length;
        int iB;
        int i8;
        int i9;
        String string;
        int i10;
        int length2;
        char cCharAt;
        ?? oVar;
        TimeZone timeZone2;
        String strSubstring;
        s sVarE;
        s oVar2;
        s sVar;
        String[] strArr;
        String str2 = str;
        this.f8476G = str2;
        this.f8477H = timeZone;
        Locale localeA = Y6.a.a(locale);
        this.f8478I = localeA;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(localeA);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length3 = str.length();
        int[] iArr = new int[1];
        char c8 = 0;
        int i11 = 0;
        while (i11 < length3) {
            iArr[c8] = i11;
            StringBuilder sb = new StringBuilder();
            int i12 = iArr[c8];
            int length4 = str.length();
            char cCharAt2 = str2.charAt(i12);
            String[] strArr2 = weekdays;
            String[] strArr3 = shortWeekdays;
            if ((cCharAt2 < 'A' || cCharAt2 > 'Z') && (cCharAt2 < 'a' || cCharAt2 > 'z')) {
                char c9 = '\'';
                sb.append('\'');
                boolean z7 = false;
                while (true) {
                    if (i12 < length4) {
                        char cCharAt3 = str2.charAt(i12);
                        if (cCharAt3 == c9) {
                            int i13 = i12 + 1;
                            i8 = length3;
                            if (i13 >= length4 || str2.charAt(i13) != '\'') {
                                z7 = !z7;
                            } else {
                                sb.append(cCharAt3);
                                i12 = i13;
                            }
                            i9 = 1;
                        } else {
                            i8 = length3;
                            if (z7 || ((cCharAt3 < 'A' || cCharAt3 > 'Z') && (cCharAt3 < 'a' || cCharAt3 > 'z'))) {
                                sb.append(cCharAt3);
                                i9 = 1;
                            } else {
                                i12--;
                            }
                        }
                        i12 += i9;
                        str2 = str;
                        length3 = i8;
                        c9 = '\'';
                    }
                    iArr[0] = i12;
                    string = sb.toString();
                    i10 = iArr[0];
                    length2 = string.length();
                    if (length2 == 0) {
                        s[] sVarArr = (s[]) arrayList.toArray(f8474L);
                        this.f8479J = sVarArr;
                        length = sVarArr.length;
                        iB = 0;
                        while (true) {
                            length--;
                            if (length < 0) {
                                this.f8480K = iB;
                                return;
                            }
                            iB += this.f8479J[length].b();
                        }
                    } else {
                        cCharAt = string.charAt(0);
                        if (cCharAt == 'y') {
                            if (length2 == 2) {
                                oVar = A.f8472a;
                            } else {
                                oVar = e(1, Math.max(length2, 4));
                            }
                            if (cCharAt == 'Y') {
                                oVar = new o(oVar, 3);
                                continue;
                                continue;
                            }
                        } else if (cCharAt != 'z') {
                            switch (cCharAt) {
                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                    strSubstring = string.substring(1);
                                    if (strSubstring.length() == 1) {
                                        oVar = new t(strSubstring);
                                    } else {
                                        oVar = new n(strSubstring.charAt(0));
                                    }
                                    break;
                                case 'K':
                                    sVarE = e(10, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'M':
                                    if (length2 >= 4) {
                                        sVarE = new u(2, months);
                                    } else if (length2 == 3) {
                                        sVarE = new u(2, shortMonths);
                                    } else if (length2 == 2) {
                                        sVarE = y.f8554a;
                                    } else {
                                        sVarE = B.f8473a;
                                    }
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'S':
                                    sVarE = e(14, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'a':
                                    sVarE = new u(9, amPmStrings);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'd':
                                    sVarE = e(5, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'h':
                                    sVarE = new o(e(10, length2), 1);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'k':
                                    sVarE = new o(e(11, length2), 2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'm':
                                    sVarE = e(12, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 's':
                                    sVarE = e(13, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'u':
                                    oVar2 = new o(e(7, length2), 0);
                                    sVar = oVar2;
                                    oVar = sVar;
                                    break;
                                case 'w':
                                    sVarE = e(3, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                default:
                                    switch (cCharAt) {
                                        case 'D':
                                            sVarE = e(6, length2);
                                            sVar = sVarE;
                                            oVar = sVar;
                                            break;
                                        case 'E':
                                            if (length2 < 4) {
                                                strArr = strArr3;
                                            } else {
                                                strArr = strArr2;
                                            }
                                            oVar2 = new u(7, strArr);
                                            sVar = oVar2;
                                            oVar = sVar;
                                            break;
                                        case 'F':
                                            sVarE = e(8, length2);
                                            sVar = sVarE;
                                            oVar = sVar;
                                            break;
                                        case 'G':
                                            oVar = new u(0, eras);
                                            break;
                                        case 'H':
                                            sVarE = e(11, length2);
                                            sVar = sVarE;
                                            oVar = sVar;
                                            break;
                                        default:
                                            sVarE = p.f8537d;
                                            switch (cCharAt) {
                                                case 'W':
                                                    sVarE = e(4, length2);
                                                    break;
                                                case 'X':
                                                    if (length2 != 1) {
                                                        sVarE = p.f8535b;
                                                    } else if (length2 != 2) {
                                                        sVarE = p.f8536c;
                                                    } else if (length2 != 3) {
                                                        throw new IllegalArgumentException("invalid number of X");
                                                    }
                                                    break;
                                                case 'Y':
                                                    if (length2 == 2) {
                                                        oVar = A.f8472a;
                                                    } else {
                                                        oVar = e(1, Math.max(length2, 4));
                                                    }
                                                    if (cCharAt == 'Y') {
                                                        oVar = new o(oVar, 3);
                                                        continue;
                                                        continue;
                                                    }
                                                    break;
                                                case 'Z':
                                                    if (length2 == 1) {
                                                        sVarE = x.f8552c;
                                                    } else if (length2 != 2) {
                                                        sVarE = x.f8551b;
                                                    }
                                                    break;
                                                default:
                                                    throw new IllegalArgumentException("Illegal pattern component: ".concat(string));
                                            }
                                            sVar = sVarE;
                                            oVar = sVar;
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            timeZone2 = this.f8477H;
                            if (length2 >= 4) {
                                oVar = new w(timeZone2, localeA, 1);
                            } else {
                                oVar = new w(timeZone2, localeA, 0);
                            }
                        }
                        arrayList.add(oVar);
                        i11 = i10 + 1;
                        str2 = str;
                        weekdays = strArr2;
                        shortWeekdays = strArr3;
                        length3 = i8;
                        c8 = 0;
                    }
                }
            } else {
                sb.append(cCharAt2);
                while (true) {
                    int i14 = i12 + 1;
                    if (i14 < length4 && str2.charAt(i14) == cCharAt2) {
                        sb.append(cCharAt2);
                        i12 = i14;
                    }
                }
            }
            i8 = length3;
            iArr[0] = i12;
            string = sb.toString();
            i10 = iArr[0];
            length2 = string.length();
            if (length2 == 0) {
                s[] sVarArr2 = (s[]) arrayList.toArray(f8474L);
                this.f8479J = sVarArr2;
                length = sVarArr2.length;
                iB = 0;
                while (true) {
                    length--;
                    if (length < 0) {
                        this.f8480K = iB;
                        return;
                    }
                    iB += this.f8479J[length].b();
                }
            } else {
                cCharAt = string.charAt(0);
                if (cCharAt == 'y') {
                    if (length2 == 2) {
                        oVar = A.f8472a;
                    } else {
                        oVar = e(1, Math.max(length2, 4));
                    }
                    if (cCharAt == 'Y') {
                        oVar = new o(oVar, 3);
                        continue;
                        continue;
                    }
                } else if (cCharAt != 'z') {
                    switch (cCharAt) {
                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                            strSubstring = string.substring(1);
                            if (strSubstring.length() == 1) {
                                oVar = new t(strSubstring);
                            } else {
                                oVar = new n(strSubstring.charAt(0));
                            }
                            break;
                        case 'K':
                            sVarE = e(10, length2);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'M':
                            if (length2 >= 4) {
                                sVarE = new u(2, months);
                            } else if (length2 == 3) {
                                sVarE = new u(2, shortMonths);
                            } else if (length2 == 2) {
                                sVarE = y.f8554a;
                            } else {
                                sVarE = B.f8473a;
                            }
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'S':
                            sVarE = e(14, length2);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'a':
                            sVarE = new u(9, amPmStrings);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'd':
                            sVarE = e(5, length2);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'h':
                            sVarE = new o(e(10, length2), 1);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'k':
                            sVarE = new o(e(11, length2), 2);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'm':
                            sVarE = e(12, length2);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 's':
                            sVarE = e(13, length2);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        case 'u':
                            oVar2 = new o(e(7, length2), 0);
                            sVar = oVar2;
                            oVar = sVar;
                            break;
                        case 'w':
                            sVarE = e(3, length2);
                            sVar = sVarE;
                            oVar = sVar;
                            break;
                        default:
                            switch (cCharAt) {
                                case 'D':
                                    sVarE = e(6, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'E':
                                    if (length2 < 4) {
                                        strArr = strArr3;
                                    } else {
                                        strArr = strArr2;
                                    }
                                    oVar2 = new u(7, strArr);
                                    sVar = oVar2;
                                    oVar = sVar;
                                    break;
                                case 'F':
                                    sVarE = e(8, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                case 'G':
                                    oVar = new u(0, eras);
                                    break;
                                case 'H':
                                    sVarE = e(11, length2);
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                                default:
                                    sVarE = p.f8537d;
                                    switch (cCharAt) {
                                        case 'W':
                                            sVarE = e(4, length2);
                                            break;
                                        case 'X':
                                            if (length2 != 1) {
                                                sVarE = p.f8535b;
                                            } else if (length2 != 2) {
                                                sVarE = p.f8536c;
                                            } else if (length2 != 3) {
                                                throw new IllegalArgumentException("invalid number of X");
                                            }
                                            break;
                                        case 'Y':
                                            if (length2 == 2) {
                                                oVar = A.f8472a;
                                            } else {
                                                oVar = e(1, Math.max(length2, 4));
                                            }
                                            if (cCharAt == 'Y') {
                                                oVar = new o(oVar, 3);
                                                continue;
                                                continue;
                                            }
                                            break;
                                        case 'Z':
                                            if (length2 == 1) {
                                                sVarE = x.f8552c;
                                            } else if (length2 != 2) {
                                                sVarE = x.f8551b;
                                            }
                                            break;
                                        default:
                                            throw new IllegalArgumentException("Illegal pattern component: ".concat(string));
                                    }
                                    sVar = sVarE;
                                    oVar = sVar;
                                    break;
                            }
                            break;
                    }
                } else {
                    timeZone2 = this.f8477H;
                    if (length2 >= 4) {
                        oVar = new w(timeZone2, localeA, 1);
                    } else {
                        oVar = new w(timeZone2, localeA, 0);
                    }
                }
                arrayList.add(oVar);
                i11 = i10 + 1;
                str2 = str;
                weekdays = strArr2;
                shortWeekdays = strArr3;
                length3 = i8;
                c8 = 0;
            }
        }
        s[] sVarArr3 = (s[]) arrayList.toArray(f8474L);
        this.f8479J = sVarArr3;
        length = sVarArr3.length;
        iB = 0;
        while (true) {
            length--;
            if (length < 0) {
                this.f8480K = iB;
                return;
            }
            iB += this.f8479J[length].b();
        }
    }

    public static void a(Appendable appendable, int i8) {
        appendable.append((char) ((i8 / 10) + 48));
        appendable.append((char) ((i8 % 10) + 48));
    }

    public static void b(Appendable appendable, int i8, int i9) {
        int i10;
        if (i8 < 10000) {
            if (i8 >= 1000) {
                i10 = 4;
            } else if (i8 < 100) {
                i10 = i8 < 10 ? 1 : 2;
            } else {
                i10 = 3;
            }
            for (int i11 = i9 - i10; i11 > 0; i11--) {
                appendable.append('0');
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return;
                        }
                        appendable.append((char) ((i8 / 1000) + 48));
                        i8 %= 1000;
                    }
                    if (i8 >= 100) {
                        appendable.append((char) ((i8 / 100) + 48));
                        i8 %= 100;
                    } else {
                        appendable.append('0');
                    }
                }
                if (i8 >= 10) {
                    appendable.append((char) ((i8 / 10) + 48));
                    i8 %= 10;
                } else {
                    appendable.append('0');
                }
            }
            appendable.append((char) (i8 + 48));
            return;
        }
        char[] cArr = new char[10];
        int i12 = 0;
        while (i8 != 0) {
            cArr[i12] = (char) ((i8 % 10) + 48);
            i8 /= 10;
            i12++;
        }
        while (i12 < i9) {
            appendable.append('0');
            i9--;
        }
        while (true) {
            i12--;
            if (i12 < 0) {
                return;
            } else {
                appendable.append(cArr[i12]);
            }
        }
    }

    public static String d(TimeZone timeZone, boolean z7, int i8, Locale locale) {
        v vVar = new v(timeZone, z7, i8, locale);
        ConcurrentHashMap concurrentHashMap = f8475M;
        String str = (String) concurrentHashMap.get(vVar);
        if (str != null) {
            return str;
        }
        String displayName = timeZone.getDisplayName(z7, i8, locale);
        String str2 = (String) concurrentHashMap.putIfAbsent(vVar, displayName);
        return str2 != null ? str2 : displayName;
    }

    public static q e(int i8, int i9) {
        if (i9 != 1) {
            return i9 != 2 ? new r(i8, i9) : new z(i8, 0);
        }
        return new z(i8, 1);
    }

    public final String c(Date date) {
        Calendar calendar = Calendar.getInstance(this.f8477H, this.f8478I);
        calendar.setTime(date);
        StringBuilder sb = new StringBuilder(this.f8480K);
        for (s sVar : this.f8479J) {
            sVar.a(sb, calendar);
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C)) {
            return false;
        }
        C c8 = (C) obj;
        return this.f8476G.equals(c8.f8476G) && this.f8477H.equals(c8.f8477H) && this.f8478I.equals(c8.f8478I);
    }

    public final int hashCode() {
        return (((this.f8478I.hashCode() * 13) + this.f8477H.hashCode()) * 13) + this.f8476G.hashCode();
    }

    public final String toString() {
        return "FastDatePrinter[" + this.f8476G + "," + this.f8478I + "," + this.f8477H.getID() + "]";
    }
}

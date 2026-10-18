package p021c4;

import com.bumptech.glide.c;
import com.google.android.gms.internal.measurement.C2644v0;
import com.google.android.gms.internal.measurement.C2664z0;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: renamed from: c4.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0569c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f11130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Boolean f11131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f11132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f11133f;

    public AbstractC0569c(String str, int i8) {
        this.f11128a = str;
        this.f11129b = i8;
    }

    public static Boolean a(BigDecimal bigDecimal, C2644v0 c2644v0, double d6) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        c.h(c2644v0);
        if (c2644v0.w()) {
            if (c2644v0.B() != 1) {
                if (c2644v0.B() == 5) {
                    if (!c2644v0.A() || !c2644v0.z()) {
                        return null;
                    }
                } else if (!c2644v0.x()) {
                    return null;
                }
                int iB = c2644v0.B();
                if (c2644v0.B() == 5) {
                    if (E1.q(c2644v0.u()) && E1.q(c2644v0.t())) {
                        try {
                            BigDecimal bigDecimal5 = new BigDecimal(c2644v0.u());
                            bigDecimal4 = new BigDecimal(c2644v0.t());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    return null;
                }
                if (!E1.q(c2644v0.s())) {
                    return null;
                }
                try {
                    bigDecimal2 = new BigDecimal(c2644v0.s());
                    bigDecimal3 = null;
                    bigDecimal4 = null;
                } catch (NumberFormatException unused2) {
                }
                if (iB == 5) {
                    if (bigDecimal3 == null) {
                        return null;
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                }
                int i8 = iB - 1;
                if (i8 == 1) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                }
                if (i8 == 2) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                }
                if (i8 != 3) {
                    if (i8 == 4 && bigDecimal3 != null) {
                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                    }
                    return null;
                }
                if (bigDecimal2 == null) {
                    return null;
                }
                if (d6 != 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d6).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d6).multiply(new BigDecimal(2)))) < 0);
                }
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
            }
        }
        return null;
    }

    public static Boolean b(String str, C2664z0 c2664z0, T t7) {
        List listU;
        c.h(c2664z0);
        if (str == null || !c2664z0.y() || c2664z0.z() == 1) {
            return null;
        }
        if (c2664z0.z() == 7) {
            if (c2664z0.q() == 0) {
                return null;
            }
        } else if (!c2664z0.x()) {
            return null;
        }
        int iZ = c2664z0.z();
        boolean zV = c2664z0.v();
        String strT = (zV || iZ == 2 || iZ == 7) ? c2664z0.t() : c2664z0.t().toUpperCase(Locale.ENGLISH);
        if (c2664z0.q() == 0) {
            listU = null;
        } else {
            listU = c2664z0.u();
            if (!zV) {
                ArrayList arrayList = new ArrayList(listU.size());
                Iterator it = listU.iterator();
                while (it.hasNext()) {
                    arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                }
                listU = Collections.unmodifiableList(arrayList);
            }
        }
        String str2 = iZ == 2 ? strT : null;
        if (iZ == 7) {
            if (listU == null || listU.isEmpty()) {
                return null;
            }
        } else if (strT == null) {
            return null;
        }
        if (!zV && iZ != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (iZ - 1) {
            case 1:
                if (str2 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str2, true != zV ? 66 : 0).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    t7.f11042O.b(str2, "Invalid regular expression in REGEXP audience filter. expression");
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(strT));
            case 3:
                return Boolean.valueOf(str.endsWith(strT));
            case 4:
                return Boolean.valueOf(str.contains(strT));
            case 5:
                return Boolean.valueOf(str.equals(strT));
            case 6:
                if (listU == null) {
                    return null;
                }
                return Boolean.valueOf(listU.contains(str));
            default:
                return null;
        }
    }

    public static Boolean c(long j8, C2644v0 c2644v0) {
        try {
            return a(new BigDecimal(j8), c2644v0, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean d(Boolean bool, boolean z7) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z7);
    }
}

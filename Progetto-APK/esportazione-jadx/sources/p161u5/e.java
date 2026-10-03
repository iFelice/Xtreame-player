package p161u5;

import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.regex.Pattern;
import p130q5.a;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f30515a = Pattern.compile(",");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f30516b;

    static {
        EnumSet enumSetOf = EnumSet.of(a.f29589R);
        EnumSet enumSetOf2 = EnumSet.of(a.f29583L);
        EnumSet enumSetOf3 = EnumSet.of(a.f29578G);
        EnumSet enumSetOf4 = EnumSet.of(a.f29588Q);
        EnumSet enumSetOf5 = EnumSet.of(a.f29592U, a.f29593V, a.f29585N, a.f29584M, a.f29590S, a.f29591T);
        EnumSet enumSetOf6 = EnumSet.of(a.f29580I, a.f29581J, a.f29582K, a.f29586O, a.f29579H);
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) enumSetOf5);
        enumSetCopyOf.addAll(enumSetOf6);
        HashMap map = new HashMap();
        f30516b = map;
        map.put("ONE_D_MODE", enumSetCopyOf);
        map.put("PRODUCT_MODE", enumSetOf5);
        map.put("QR_CODE_MODE", enumSetOf);
        map.put("DATA_MATRIX_MODE", enumSetOf2);
        map.put("AZTEC_MODE", enumSetOf3);
        map.put("PDF417_MODE", enumSetOf4);
    }
}

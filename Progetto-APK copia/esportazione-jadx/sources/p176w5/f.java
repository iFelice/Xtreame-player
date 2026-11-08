package p176w5;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f31111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f31112b;

    static {
        String strName = Charset.defaultCharset().name();
        f31111a = strName;
        f31112b = "SJIS".equalsIgnoreCase(strName) || "EUC_JP".equalsIgnoreCase(strName);
    }
}

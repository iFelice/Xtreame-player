package I6;

import java.nio.charset.Charset;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f4021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile Charset f4022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Charset f4023c;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        q0.g(charsetForName, "forName(...)");
        f4021a = charsetForName;
        q0.g(Charset.forName("UTF-16"), "forName(...)");
        q0.g(Charset.forName("UTF-16BE"), "forName(...)");
        q0.g(Charset.forName("UTF-16LE"), "forName(...)");
        q0.g(Charset.forName("US-ASCII"), "forName(...)");
        q0.g(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}

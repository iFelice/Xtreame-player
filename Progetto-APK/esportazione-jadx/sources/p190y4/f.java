package p190y4;

/* JADX INFO: loaded from: classes.dex */
public final class f extends d {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final int f31422H = Integer.numberOfLeadingZeros(31);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final f f31423I = new f("CharMatcher.whitespace()");

    @Override // p190y4.b
    public final boolean b(char c8) {
        return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c8) >>> f31422H) == c8;
    }
}

package Y5;

import java.util.BitSet;
import java.util.Locale;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BitSet f8169c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8171b;

    static {
        BitSet bitSet = new BitSet(127);
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        for (char c8 = '0'; c8 <= '9'; c8 = (char) (c8 + 1)) {
            bitSet.set(c8);
        }
        for (char c9 = 'a'; c9 <= 'z'; c9 = (char) (c9 + 1)) {
            bitSet.set(c9);
        }
        f8169c = bitSet;
    }

    public r(String str, boolean z7, Object obj) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        p190y4.k.s(lowerCase, "name");
        p190y4.k.o("token must have at least 1 tchar", !lowerCase.isEmpty());
        if (lowerCase.equals("connection")) {
            u.f8172a.log(Level.WARNING, "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
        }
        for (int i8 = 0; i8 < lowerCase.length(); i8++) {
            char cCharAt = lowerCase.charAt(i8);
            if ((!z7 || cCharAt != ':' || i8 != 0) && !f8169c.get(cCharAt)) {
                throw new IllegalArgumentException(p027d2.v.n("Invalid character '%s' in key name '%s'", Character.valueOf(cCharAt), lowerCase));
            }
        }
        this.f8170a = lowerCase;
        lowerCase.getBytes(p190y4.g.f31424a);
        this.f8171b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f8170a.equals(((r) obj).f8170a);
    }

    public final int hashCode() {
        return this.f8170a.hashCode();
    }

    public final String toString() {
        return p000a.r.j(new StringBuilder("Key{name='"), this.f8170a, "'}");
    }
}

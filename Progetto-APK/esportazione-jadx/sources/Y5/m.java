package Y5;

import java.nio.charset.Charset;
import java.util.BitSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m {
    static {
        Charset.forName("US-ASCII");
        A4.c cVar = u.f8174c;
    }

    public static s a(String str, U4.b bVar) {
        boolean z7 = false;
        if (!str.isEmpty() && str.charAt(0) == ':') {
            z7 = true;
        }
        BitSet bitSet = r.f8169c;
        return new s(str, z7, bVar);
    }
}

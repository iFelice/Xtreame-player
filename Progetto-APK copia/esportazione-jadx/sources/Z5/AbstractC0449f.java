package Z5;

import Y5.AbstractC0417d;
import java.util.logging.Level;

/* JADX INFO: renamed from: Z5.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0449f extends AbstractC0417d {
    public static Level p(int i8) {
        int iB = p156u.h.b(i8);
        if (iB != 1) {
            return (iB == 2 || iB == 3) ? Level.FINE : Level.FINEST;
        }
        return Level.FINER;
    }
}

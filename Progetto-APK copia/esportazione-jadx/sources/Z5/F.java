package Z5;

import Y5.AbstractC0417d;
import java.text.MessageFormat;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public final class F extends AbstractC0417d {
    @Override // Y5.AbstractC0417d
    public final void i(int i8, String str) {
        Level levelP = AbstractC0449f.p(i8);
        if (AbstractC0450g.f8455a.isLoggable(levelP)) {
            AbstractC0450g.a(null, levelP, str);
        }
    }

    @Override // Y5.AbstractC0417d
    public final void j(int i8, String str, Object... objArr) {
        Level levelP = AbstractC0449f.p(i8);
        if (AbstractC0450g.f8455a.isLoggable(levelP)) {
            AbstractC0450g.a(null, levelP, MessageFormat.format(str, objArr));
        }
    }
}

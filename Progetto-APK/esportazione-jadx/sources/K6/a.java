package K6;

import J6.S;
import N6.o;
import android.os.Looper;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements o {
    @Override // N6.o
    public String a() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // N6.o
    public S b(List list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new c(d.a(mainLooper));
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // N6.o
    public int c() {
        return 1073741823;
    }
}

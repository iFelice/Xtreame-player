package F2;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: F2.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0196f implements p173w2.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f3136b;

    public /* synthetic */ C0196f(p pVar, int i8) {
        this.f3135a = i8;
        this.f3136b = pVar;
    }

    @Override // p173w2.n
    public final boolean a(Object obj, p173w2.l lVar) {
        int i8 = this.f3135a;
        p pVar = this.f3136b;
        switch (i8) {
            case 0:
                pVar.getClass();
                return true;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                if ((!"HUAWEI".equalsIgnoreCase(str) && !"HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) {
                    pVar.getClass();
                    if (!"robolectric".equals(Build.FINGERPRINT)) {
                        return true;
                    }
                }
                return false;
        }
    }

    @Override // p173w2.n
    public final y2.D b(Object obj, int i8, int i9, p173w2.l lVar) {
        int i10 = this.f3135a;
        p pVar = this.f3136b;
        switch (i10) {
            case 0:
                return pVar.a(new p096m2.u((ByteBuffer) obj, pVar.f3161d, pVar.f3160c, 24, 0), i8, i9, lVar, p.f3156k);
            default:
                return pVar.a(new p096m2.u((ParcelFileDescriptor) obj, pVar.f3161d, pVar.f3160c), i8, i9, lVar, p.f3156k);
        }
    }
}

package p019c2;

import com.bumptech.glide.c;
import p011b2.e;

/* JADX INFO: loaded from: classes.dex */
public final class m extends b {
    @Override // p019c2.c
    public final boolean b() {
        if (!super.b() || !c.o("MULTI_PROCESS")) {
            return false;
        }
        int i8 = e.f9832a;
        if (n.f10636c.b()) {
            return o.f10639a.getStatics().isMultiProcessEnabled();
        }
        throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
    }
}

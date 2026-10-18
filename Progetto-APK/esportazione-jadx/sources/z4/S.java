package z4;

import com.google.android.gms.internal.ads.EA;
import com.google.android.gms.internal.ads.FA;
import java.util.AbstractList;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class S extends t0 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f31826H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AbstractList f31827I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S(AbstractList abstractList, ListIterator listIterator, int i8) {
        super(listIterator);
        this.f31826H = i8;
        this.f31827I = abstractList;
    }

    @Override // z4.s0
    public final Object a(Object obj) {
        int i8 = this.f31826H;
        AbstractList abstractList = this.f31827I;
        switch (i8) {
            case 0:
                return ((p190y4.h) ((EA) abstractList).f12947I).apply(obj);
            default:
                return ((p190y4.h) ((FA) abstractList).f13327I).apply(obj);
        }
    }
}

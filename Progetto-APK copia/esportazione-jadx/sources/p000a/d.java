package p000a;

import Y.AbstractActivityC0409v;
import Y.K;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import p032e0.EnumC2981i;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements S1.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f8561b;

    public /* synthetic */ d(Object obj, int i8) {
        this.f8560a = i8;
        this.f8561b = obj;
    }

    @Override // S1.d
    public final Bundle a() {
        int i8 = this.f8560a;
        Object obj = this.f8561b;
        switch (i8) {
            case 0:
                m mVar = (m) obj;
                mVar.getClass();
                Bundle bundle = new Bundle();
                h hVar = mVar.f8585P;
                hVar.getClass();
                HashMap map = hVar.f10547c;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(map.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(map.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(hVar.f10549e));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) hVar.f10552h.clone());
                bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", hVar.f10545a);
                return bundle;
            case 1:
                AbstractActivityC0409v abstractActivityC0409v = (AbstractActivityC0409v) obj;
                int i9 = AbstractActivityC0409v.f7984c0;
                while (AbstractActivityC0409v.o(abstractActivityC0409v.f7985X.R())) {
                }
                abstractActivityC0409v.f7986Y.f(EnumC2981i.ON_STOP);
                return new Bundle();
            default:
                return ((K) obj).S();
        }
    }
}

package p000a;

import Y.AbstractActivityC0409v;
import Y.C0408u;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import p008b.a;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f8563b;

    public /* synthetic */ e(AbstractActivityC0409v abstractActivityC0409v, int i8) {
        this.f8562a = i8;
        this.f8563b = abstractActivityC0409v;
    }

    @Override // p008b.a
    public final void a() {
        int i8 = this.f8562a;
        m mVar = this.f8563b;
        switch (i8) {
            case 0:
                Bundle bundleA = mVar.f8580K.f6394b.a("android:support:activity-result");
                if (bundleA != null) {
                    h hVar = mVar.f8585P;
                    hVar.getClass();
                    ArrayList<Integer> integerArrayList = bundleA.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList != null && integerArrayList != null) {
                        hVar.f10549e = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                        hVar.f10545a = (Random) bundleA.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                        Bundle bundle = bundleA.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                        Bundle bundle2 = hVar.f10552h;
                        bundle2.putAll(bundle);
                        for (int i9 = 0; i9 < stringArrayList.size(); i9++) {
                            String str = stringArrayList.get(i9);
                            HashMap map = hVar.f10547c;
                            boolean zContainsKey = map.containsKey(str);
                            HashMap map2 = hVar.f10546b;
                            if (zContainsKey) {
                                Integer num = (Integer) map.remove(str);
                                if (!bundle2.containsKey(str)) {
                                    map2.remove(num);
                                }
                            }
                            Integer num2 = integerArrayList.get(i9);
                            num2.intValue();
                            String str2 = stringArrayList.get(i9);
                            map2.put(num2, str2);
                            map.put(str2, num2);
                        }
                        break;
                    }
                }
                break;
            default:
                C0408u c0408u = (C0408u) ((AbstractActivityC0409v) mVar).f7985X.f24988H;
                c0408u.f7982P.b(c0408u, c0408u, null);
                break;
        }
    }
}

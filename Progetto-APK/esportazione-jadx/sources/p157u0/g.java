package p157u0;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetProvider;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    public static CronetEngine a(Context context) {
        ArrayList arrayList = new ArrayList(CronetProvider.getAllProviders(context));
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!((CronetProvider) arrayList.get(size)).isEnabled() || CronetProvider.PROVIDER_NAME_FALLBACK.equals(((CronetProvider) arrayList.get(size)).getName())) {
                arrayList.remove(size);
            }
        }
        Collections.sort(arrayList, new f());
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            String name = ((CronetProvider) arrayList.get(i8)).getName();
            try {
                CronetEngine cronetEngineBuild = ((CronetProvider) arrayList.get(i8)).createBuilder().build();
                x.b("CronetUtil", "CronetEngine built using " + name);
                return cronetEngineBuild;
            } catch (SecurityException unused) {
                x.f("CronetUtil", "Failed to build CronetEngine. Please check that the process has android.permission.ACCESS_NETWORK_STATE.");
            } catch (UnsatisfiedLinkError unused2) {
                x.f("CronetUtil", "Failed to link Cronet binaries. Please check that native Cronet binaries arebundled into your app.");
            }
        }
        x.f("CronetUtil", "CronetEngine could not be built.");
        return null;
    }
}

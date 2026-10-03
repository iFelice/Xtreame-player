package p157u0;

import java.util.Comparator;
import org.chromium.net.CronetProvider;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f30412G = false;

    public final int a(CronetProvider cronetProvider) {
        String name = cronetProvider.getName();
        if (CronetProvider.PROVIDER_NAME_APP_PACKAGED.equals(name)) {
            return 1;
        }
        if ("Google-Play-Services-Cronet-Provider".equals(name)) {
            return this.f30412G ? 0 : 2;
        }
        return 3;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        CronetProvider cronetProvider = (CronetProvider) obj;
        CronetProvider cronetProvider2 = (CronetProvider) obj2;
        int iA = a(cronetProvider) - a(cronetProvider2);
        if (iA != 0) {
            return iA;
        }
        String version = cronetProvider.getVersion();
        String version2 = cronetProvider2.getVersion();
        int i8 = 0;
        if (version != null && version2 != null) {
            String str = M.f28050a;
            String[] strArrSplit = version.split("\\.", -1);
            String[] strArrSplit2 = version2.split("\\.", -1);
            int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
            for (int i9 = 0; i9 < iMin; i9++) {
                if (!strArrSplit[i9].equals(strArrSplit2[i9])) {
                    try {
                        i8 = Integer.parseInt(strArrSplit[i9]) - Integer.parseInt(strArrSplit2[i9]);
                        break;
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return -i8;
    }
}

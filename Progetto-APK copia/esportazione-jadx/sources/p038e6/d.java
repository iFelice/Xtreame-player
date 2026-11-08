package p038e6;

import Y5.AbstractC0417d;
import java.util.ArrayList;
import p141s0.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends AbstractC0417d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Long f24871d;

    public static ArrayList p(r rVar, int i8) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : rVar.values()) {
            if (aVar.b() >= i8) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }
}

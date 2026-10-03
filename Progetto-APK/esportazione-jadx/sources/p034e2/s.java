package p034e2;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p027d2.n;
import p027d2.x;
import p039f.AbstractC2987b;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class s extends AbstractC2987b {

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final String f24829R = n.f("WorkContinuationImpl");

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final y f24830M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final List f24831N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final ArrayList f24832O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ArrayList f24833P = new ArrayList();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f24834Q;

    public s(y yVar, List list) {
        this.f24830M = yVar;
        this.f24831N = list;
        this.f24832O = new ArrayList(list.size());
        for (int i8 = 0; i8 < list.size(); i8++) {
            String string = ((x) list.get(i8)).f24650a.toString();
            q0.g(string, "id.toString()");
            this.f24832O.add(string);
            this.f24833P.add(string);
        }
    }

    public static boolean G0(s sVar, HashSet hashSet) {
        hashSet.addAll(sVar.f24832O);
        HashSet hashSetH0 = H0(sVar);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (hashSetH0.contains((String) it.next())) {
                return true;
            }
        }
        hashSet.removeAll(sVar.f24832O);
        return false;
    }

    public static HashSet H0(s sVar) {
        HashSet hashSet = new HashSet();
        sVar.getClass();
        return hashSet;
    }
}

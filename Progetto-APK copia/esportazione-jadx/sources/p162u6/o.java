package p162u6;

import C6.l;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import okhttp3.HttpUrl;
import p027d2.v;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o extends m {
    public static ArrayList A(List list, Collection collection) {
        q0.h(collection, "<this>");
        q0.h(list, "elements");
        ArrayList arrayList = new ArrayList(list.size() + collection.size());
        arrayList.addAll(collection);
        arrayList.addAll(list);
        return arrayList;
    }

    public static final void B(Iterable iterable, AbstractCollection abstractCollection) {
        q0.h(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List C(Iterable iterable) {
        ArrayList arrayList;
        q0.h(iterable, "<this>");
        boolean z7 = iterable instanceof Collection;
        q qVar = q.f30542G;
        if (z7) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return qVar;
            }
            if (size != 1) {
                return new ArrayList(collection);
            }
            return v.o(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
        }
        if (z7) {
            arrayList = new ArrayList((Collection) iterable);
        } else {
            arrayList = new ArrayList();
            B(iterable, arrayList);
        }
        int size2 = arrayList.size();
        if (size2 != 0) {
            return size2 != 1 ? arrayList : v.o(arrayList.get(0));
        }
        return qVar;
    }

    public static Set D(Iterable iterable) {
        q0.h(iterable, "<this>");
        boolean z7 = iterable instanceof Collection;
        s sVar = s.f30544G;
        if (!z7) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            B(iterable, linkedHashSet);
            int size = linkedHashSet.size();
            if (size == 0) {
                return sVar;
            }
            if (size != 1) {
                return linkedHashSet;
            }
            Set setSingleton = Collections.singleton(linkedHashSet.iterator().next());
            q0.g(setSingleton, "singleton(...)");
            return setSingleton;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return sVar;
        }
        if (size2 != 1) {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(k.X(collection.size()));
            B(iterable, linkedHashSet2);
            return linkedHashSet2;
        }
        Set setSingleton2 = Collections.singleton(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
        q0.g(setSingleton2, "singleton(...)");
        return setSingleton2;
    }

    public static boolean x(Iterable iterable, Object obj) {
        int iIndexOf;
        q0.h(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (!(iterable instanceof List)) {
            int i8 = 0;
            for (Object obj2 : iterable) {
                if (i8 < 0) {
                    v.u();
                    throw null;
                }
                if (q0.c(obj, obj2)) {
                    iIndexOf = i8;
                } else {
                    i8++;
                }
            }
            return false;
        }
        iIndexOf = ((List) iterable).indexOf(obj);
        return iIndexOf >= 0;
    }

    public static final void y(Iterable iterable, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i8, CharSequence charSequence4, l lVar) {
        q0.h(iterable, "<this>");
        q0.h(charSequence, "separator");
        q0.h(charSequence2, "prefix");
        q0.h(charSequence3, "postfix");
        q0.h(charSequence4, "truncated");
        sb.append(charSequence2);
        int i9 = 0;
        for (Object obj : iterable) {
            i9++;
            if (i9 > 1) {
                sb.append(charSequence);
            }
            if (i8 >= 0 && i9 > i8) {
                break;
            } else {
                k.e(sb, obj, lVar);
            }
        }
        if (i8 >= 0 && i9 > i8) {
            sb.append(charSequence4);
        }
        sb.append(charSequence3);
    }

    public static String z(Iterable iterable, String str, String str2, String str3, a aVar, int i8) {
        String str4 = (i8 & 2) != 0 ? HttpUrl.FRAGMENT_ENCODE_SET : str2;
        String str5 = (i8 & 4) != 0 ? HttpUrl.FRAGMENT_ENCODE_SET : str3;
        if ((i8 & 32) != 0) {
            aVar = null;
        }
        q0.h(iterable, "<this>");
        q0.h(str4, "prefix");
        q0.h(str5, "postfix");
        StringBuilder sb = new StringBuilder();
        y(iterable, sb, str, str4, str5, -1, "...", aVar);
        return sb.toString();
    }
}

package L1;

import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f4619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f4620b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(List list) {
        this(list, q.f30542G);
        q0.h(list, "topics");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        List list = this.f4619a;
        c cVar = (c) obj;
        if (list.size() == cVar.f4619a.size()) {
            List list2 = this.f4620b;
            return list2.size() == cVar.f4620b.size() && q0.c(new HashSet(list), new HashSet(cVar.f4619a)) && q0.c(new HashSet(list2), new HashSet(cVar.f4620b));
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f4619a, this.f4620b);
    }

    public final String toString() {
        return "GetTopicsResponse: Topics=" + this.f4619a + ", EncryptedTopics=" + this.f4620b;
    }

    public c(List list, List list2) {
        q0.h(list, "topics");
        this.f4619a = list;
        this.f4620b = list2;
    }
}

package z4;

import java.util.Map;

/* JADX WARN: Enum visitor error
java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.nodes.MethodNode.getBasicBlocks()" is null
	at jadx.core.dex.visitors.EnumVisitor.searchEnumSuperCtrInsn(EnumVisitor.java:495)
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:473)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public abstract class W implements p190y4.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final V f31828G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ W[] f31829H;

    /* JADX INFO: Fake field, exist only in values array */
    W EF0;

    static {
        W w7 = new W() { // from class: z4.U
            @Override // p190y4.h
            public final Object apply(Object obj) {
                return ((Map.Entry) obj).getKey();
            }
        };
        V v5 = new V();
        f31828G = v5;
        f31829H = new W[]{w7, v5};
    }

    public static W valueOf(String str) {
        return (W) Enum.valueOf(W.class, str);
    }

    public static W[] values() {
        return (W[]) f31829H.clone();
    }
}

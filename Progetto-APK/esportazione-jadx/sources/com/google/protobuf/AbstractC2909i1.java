package com.google.protobuf;

import Z3.C0433o;
import com.google.android.gms.internal.ads.CO;
import com.google.android.gms.internal.ads.SG;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.protobuf.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2909i1 extends AbstractC2879b {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, AbstractC2909i1> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected A2 unknownFields;

    public AbstractC2909i1() {
        this.memoizedHashCode = 0;
        this.memoizedSerializedSize = -1;
        this.unknownFields = A2.f24234f;
    }

    public static C2901g1 access$000(L0 l4) {
        l4.getClass();
        return (C2901g1) l4;
    }

    public static void b(AbstractC2909i1 abstractC2909i1) throws C2966x1 {
        if (abstractC2909i1 == null || abstractC2909i1.isInitialized()) {
            return;
        }
        z2 z2VarNewUninitializedMessageException = abstractC2909i1.newUninitializedMessageException();
        z2VarNewUninitializedMessageException.getClass();
        throw new C2966x1(z2VarNewUninitializedMessageException.getMessage());
    }

    public static AbstractC2909i1 c(AbstractC2909i1 abstractC2909i1, InputStream inputStream, O0 o4) throws C2966x1 {
        try {
            int i8 = inputStream.read();
            if (i8 == -1) {
                return null;
            }
            AbstractC2961w abstractC2961wI = AbstractC2961w.i(new P2.l(AbstractC2961w.y(i8, inputStream), inputStream));
            AbstractC2909i1 partialFrom = parsePartialFrom(abstractC2909i1, abstractC2961wI, o4);
            abstractC2961wI.a(0);
            return partialFrom;
        } catch (C2966x1 e8) {
            if (e8.f24533G) {
                throw new C2966x1(e8.getMessage(), e8);
            }
            throw e8;
        } catch (IOException e9) {
            throw new C2966x1(e9.getMessage(), e9);
        }
    }

    public static AbstractC2909i1 d(AbstractC2909i1 abstractC2909i1, byte[] bArr, int i8, int i9, O0 o4) throws C2966x1 {
        AbstractC2909i1 abstractC2909i1NewMutableInstance = abstractC2909i1.newMutableInstance();
        try {
            InterfaceC2914j2 interfaceC2914j2B = C2902g2.f24439c.b(abstractC2909i1NewMutableInstance);
            interfaceC2914j2B.a(abstractC2909i1NewMutableInstance, bArr, i8, i8 + i9, new SG(o4));
            interfaceC2914j2B.d(abstractC2909i1NewMutableInstance);
            return abstractC2909i1NewMutableInstance;
        } catch (C2966x1 e8) {
            if (e8.f24533G) {
                throw new C2966x1(e8.getMessage(), e8);
            }
            throw e8;
        } catch (z2 e9) {
            throw new C2966x1(e9.getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof C2966x1) {
                throw ((C2966x1) e10.getCause());
            }
            throw new C2966x1(e10.getMessage(), e10);
        } catch (IndexOutOfBoundsException unused) {
            throw C2966x1.g();
        }
    }

    public static InterfaceC2925m1 emptyBooleanList() {
        return C2915k.f24459J;
    }

    public static InterfaceC2929n1 emptyDoubleList() {
        return D0.f24242J;
    }

    public static InterfaceC2944r1 emptyFloatList() {
        return Y0.f24400J;
    }

    public static InterfaceC2948s1 emptyIntList() {
        return C2921l1.f24468J;
    }

    public static InterfaceC2952t1 emptyLongList() {
        return F1.f24248J;
    }

    public static <E> InterfaceC2956u1 emptyProtobufList() {
        return C2906h2.f24450J;
    }

    public static <T extends AbstractC2909i1> T getDefaultInstance(Class<T> cls) {
        AbstractC2909i1 abstractC2909i1 = defaultInstanceMap.get(cls);
        if (abstractC2909i1 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC2909i1 = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e8) {
                throw new IllegalStateException("Class initialization cannot fail.", e8);
            }
        }
        if (abstractC2909i1 == null) {
            abstractC2909i1 = (T) ((AbstractC2909i1) H2.b(cls)).getDefaultInstanceForType();
            if (abstractC2909i1 == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, abstractC2909i1);
        }
        return (T) abstractC2909i1;
    }

    public static java.lang.reflect.Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e8) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e8);
        }
    }

    public static Object invokeOrDie(java.lang.reflect.Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e8) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e8);
        } catch (InvocationTargetException e9) {
            Throwable cause = e9.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static InterfaceC2948s1 mutableCopy(InterfaceC2948s1 interfaceC2948s1) {
        C2921l1 c2921l1 = (C2921l1) interfaceC2948s1;
        int i8 = c2921l1.f24470I;
        int i9 = i8 == 0 ? 10 : i8 * 2;
        if (i9 >= i8) {
            return new C2921l1(Arrays.copyOf(c2921l1.f24469H, i9), c2921l1.f24470I, true);
        }
        throw new IllegalArgumentException();
    }

    public static Object newMessageInfo(Q1 q7, String str, Object[] objArr) {
        return new C2910i2(q7, str, objArr);
    }

    public static <ContainingType extends Q1, Type> C2901g1 newRepeatedGeneratedExtension(ContainingType containingtype, Q1 q7, InterfaceC2937p1 interfaceC2937p1, int i8, S2 s7, boolean z7, Class cls) {
        return new C2901g1(containingtype, Collections.emptyList(), q7, new C2897f1(interfaceC2937p1, i8, s7, true, z7));
    }

    public static <ContainingType extends Q1, Type> C2901g1 newSingularGeneratedExtension(ContainingType containingtype, Type type, Q1 q7, InterfaceC2937p1 interfaceC2937p1, int i8, S2 s7, Class cls) {
        return new C2901g1(containingtype, type, q7, new C2897f1(interfaceC2937p1, i8, s7, false, false));
    }

    public static <T extends AbstractC2909i1> T parseDelimitedFrom(T t7, InputStream inputStream) throws C2966x1 {
        T t8 = (T) c(t7, inputStream, O0.b());
        b(t8);
        return t8;
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, ByteBuffer byteBuffer, O0 o4) throws C2966x1 {
        T t8 = (T) parseFrom(t7, AbstractC2961w.j(byteBuffer, false), o4);
        b(t8);
        return t8;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static <T extends AbstractC2909i1> T parsePartialFrom(T t7, AbstractC2961w abstractC2961w, O0 o4) throws C2966x1 {
        T t8 = (T) t7.newMutableInstance();
        try {
            InterfaceC2914j2 interfaceC2914j2B = C2902g2.f24439c.b(t8);
            CO co = abstractC2961w.f24529d;
            if (co == null) {
                co = new CO();
                co.f12630c = 0;
                Charset charset = AbstractC2960v1.f24524a;
                co.f12631d = abstractC2961w;
                abstractC2961w.f24529d = co;
            }
            interfaceC2914j2B.c(t8, co, o4);
            interfaceC2914j2B.d(t8);
            return t8;
        } catch (C2966x1 e8) {
            if (e8.f24533G) {
                throw new C2966x1(e8.getMessage(), e8);
            }
            throw e8;
        } catch (z2 e9) {
            throw new C2966x1(e9.getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof C2966x1) {
                throw ((C2966x1) e10.getCause());
            }
            throw new C2966x1(e10.getMessage(), e10);
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof C2966x1) {
                throw ((C2966x1) e11.getCause());
            }
            throw e11;
        }
    }

    public static <T extends AbstractC2909i1> void registerDefaultInstance(Class<T> cls, T t7) {
        t7.markImmutable();
        defaultInstanceMap.put(cls, t7);
    }

    public Object buildMessageInfo() {
        return dynamicMethod(EnumC2905h1.f24444I);
    }

    public void clearMemoizedHashCode() {
        this.memoizedHashCode = 0;
    }

    public void clearMemoizedSerializedSize() {
        setMemoizedSerializedSize(com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
    }

    public int computeHashCode() {
        C2902g2 c2902g2 = C2902g2.f24439c;
        c2902g2.getClass();
        return c2902g2.a(getClass()).j(this);
    }

    public final <MessageType extends AbstractC2909i1, BuilderType extends AbstractC2881b1> BuilderType createBuilder() {
        return (BuilderType) dynamicMethod(EnumC2905h1.f24446K);
    }

    public Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj) {
        return dynamicMethod(enumC2905h1, obj, null);
    }

    public abstract Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2902g2 c2902g2 = C2902g2.f24439c;
        c2902g2.getClass();
        return c2902g2.a(getClass()).g(this, (AbstractC2909i1) obj);
    }

    public int getMemoizedHashCode() {
        return this.memoizedHashCode;
    }

    public int getMemoizedSerializedSize() {
        return this.memoizedSerializedSize & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final InterfaceC2894e2 getParserForType() {
        return (InterfaceC2894e2) dynamicMethod(EnumC2905h1.f24448M);
    }

    @Override // com.google.protobuf.AbstractC2879b
    public int getSerializedSize(InterfaceC2914j2 interfaceC2914j2) {
        int iH;
        int iH2;
        if (isMutable()) {
            if (interfaceC2914j2 == null) {
                C2902g2 c2902g2 = C2902g2.f24439c;
                c2902g2.getClass();
                iH2 = c2902g2.a(getClass()).h(this);
            } else {
                iH2 = interfaceC2914j2.h(this);
            }
            if (iH2 >= 0) {
                return iH2;
            }
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iH2));
        }
        if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
            return getMemoizedSerializedSize();
        }
        if (interfaceC2914j2 == null) {
            C2902g2 c2902g3 = C2902g2.f24439c;
            c2902g3.getClass();
            iH = c2902g3.a(getClass()).h(this);
        } else {
            iH = interfaceC2914j2.h(this);
        }
        setMemoizedSerializedSize(iH);
        return iH;
    }

    public int hashCode() {
        if (isMutable()) {
            return computeHashCode();
        }
        if (hashCodeIsNotMemoized()) {
            setMemoizedHashCode(computeHashCode());
        }
        return getMemoizedHashCode();
    }

    public boolean hashCodeIsNotMemoized() {
        return getMemoizedHashCode() == 0;
    }

    @Override // com.google.protobuf.R1
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    public boolean isMutable() {
        return (this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0;
    }

    public void makeImmutable() {
        C2902g2 c2902g2 = C2902g2.f24439c;
        c2902g2.getClass();
        c2902g2.a(getClass()).d(this);
        markImmutable();
    }

    public void markImmutable() {
        this.memoizedSerializedSize &= com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public void mergeLengthDelimitedField(int i8, r rVar) {
        if (this.unknownFields == A2.f24234f) {
            this.unknownFields = new A2();
        }
        A2 a8 = this.unknownFields;
        a8.a();
        if (i8 == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        a8.f((i8 << 3) | 2, rVar);
    }

    public final void mergeUnknownFields(A2 a8) {
        this.unknownFields = A2.e(this.unknownFields, a8);
    }

    public void mergeVarintField(int i8, int i9) {
        if (this.unknownFields == A2.f24234f) {
            this.unknownFields = new A2();
        }
        A2 a8 = this.unknownFields;
        a8.a();
        if (i8 == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        a8.f(i8 << 3, Long.valueOf(i9));
    }

    public AbstractC2909i1 newMutableInstance() {
        return (AbstractC2909i1) dynamicMethod(EnumC2905h1.f24445J);
    }

    public boolean parseUnknownField(int i8, AbstractC2961w abstractC2961w) {
        if ((i8 & 7) == 4) {
            return false;
        }
        if (this.unknownFields == A2.f24234f) {
            this.unknownFields = new A2();
        }
        return this.unknownFields.d(i8, abstractC2961w);
    }

    public void setMemoizedHashCode(int i8) {
        this.memoizedHashCode = i8;
    }

    public void setMemoizedSerializedSize(int i8) {
        if (i8 < 0) {
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", i8));
        }
        this.memoizedSerializedSize = (i8 & com.google.android.gms.common.api.d.API_PRIORITY_OTHER) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
    }

    public String toString() {
        String string = super.toString();
        char[] cArr = S1.f24301a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        S1.c(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.protobuf.Q1
    public void writeTo(AbstractC2970z abstractC2970z) {
        C2902g2 c2902g2 = C2902g2.f24439c;
        c2902g2.getClass();
        InterfaceC2914j2 interfaceC2914j2A = c2902g2.a(getClass());
        C0433o c0433o = abstractC2970z.f24552c;
        if (c0433o == null) {
            c0433o = new C0433o(abstractC2970z);
        }
        interfaceC2914j2A.f(this, c0433o);
    }

    public static final <T extends AbstractC2909i1> boolean isInitialized(T t7, boolean z7) {
        byte bByteValue = ((Byte) t7.dynamicMethod(EnumC2905h1.f24442G)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        C2902g2 c2902g2 = C2902g2.f24439c;
        c2902g2.getClass();
        boolean zE = c2902g2.a(t7.getClass()).e(t7);
        if (z7) {
            t7.dynamicMethod(EnumC2905h1.f24443H, zE ? t7 : null);
        }
        return zE;
    }

    public final <MessageType extends AbstractC2909i1, BuilderType extends AbstractC2881b1> BuilderType createBuilder(MessageType messagetype) {
        BuilderType buildertype = (BuilderType) createBuilder();
        buildertype.g(messagetype);
        return buildertype;
    }

    public Object dynamicMethod(EnumC2905h1 enumC2905h1) {
        return dynamicMethod(enumC2905h1, null, null);
    }

    @Override // com.google.protobuf.R1
    public final AbstractC2909i1 getDefaultInstanceForType() {
        return (AbstractC2909i1) dynamicMethod(EnumC2905h1.f24447L);
    }

    @Override // com.google.protobuf.Q1
    public final AbstractC2881b1 newBuilderForType() {
        return (AbstractC2881b1) dynamicMethod(EnumC2905h1.f24446K);
    }

    @Override // com.google.protobuf.Q1
    public final AbstractC2881b1 toBuilder() {
        AbstractC2881b1 abstractC2881b1 = (AbstractC2881b1) dynamicMethod(EnumC2905h1.f24446K);
        abstractC2881b1.g(this);
        return abstractC2881b1;
    }

    public static <T extends AbstractC2909i1> T parseDelimitedFrom(T t7, InputStream inputStream, O0 o4) throws C2966x1 {
        T t8 = (T) c(t7, inputStream, o4);
        b(t8);
        return t8;
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, ByteBuffer byteBuffer) {
        return (T) parseFrom(t7, byteBuffer, O0.b());
    }

    public static InterfaceC2952t1 mutableCopy(InterfaceC2952t1 interfaceC2952t1) {
        F1 f8 = (F1) interfaceC2952t1;
        int i8 = f8.f24250I;
        int i9 = i8 == 0 ? 10 : i8 * 2;
        if (i9 >= i8) {
            return new F1(Arrays.copyOf(f8.f24249H, i9), f8.f24250I, true);
        }
        throw new IllegalArgumentException();
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, r rVar) throws C2966x1 {
        T t8 = (T) parseFrom(t7, rVar, O0.b());
        b(t8);
        return t8;
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, r rVar, O0 o4) throws C2966x1 {
        AbstractC2961w abstractC2961wP = rVar.p();
        T t8 = (T) parsePartialFrom(t7, abstractC2961wP, o4);
        abstractC2961wP.a(0);
        b(t8);
        return t8;
    }

    public static InterfaceC2944r1 mutableCopy(InterfaceC2944r1 interfaceC2944r1) {
        Y0 y7 = (Y0) interfaceC2944r1;
        int i8 = y7.f24402I;
        int i9 = i8 == 0 ? 10 : i8 * 2;
        if (i9 >= i8) {
            return new Y0(Arrays.copyOf(y7.f24401H, i9), y7.f24402I, true);
        }
        throw new IllegalArgumentException();
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, byte[] bArr) throws C2966x1 {
        T t8 = (T) d(t7, bArr, 0, bArr.length, O0.b());
        b(t8);
        return t8;
    }

    public static InterfaceC2929n1 mutableCopy(InterfaceC2929n1 interfaceC2929n1) {
        D0 d6 = (D0) interfaceC2929n1;
        int i8 = d6.f24244I;
        int i9 = i8 == 0 ? 10 : i8 * 2;
        if (i9 >= i8) {
            return new D0(Arrays.copyOf(d6.f24243H, i9), d6.f24244I, true);
        }
        throw new IllegalArgumentException();
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, byte[] bArr, O0 o4) throws C2966x1 {
        T t8 = (T) d(t7, bArr, 0, bArr.length, o4);
        b(t8);
        return t8;
    }

    public static InterfaceC2925m1 mutableCopy(InterfaceC2925m1 interfaceC2925m1) {
        C2915k c2915k = (C2915k) interfaceC2925m1;
        int i8 = c2915k.f24461I;
        int i9 = i8 == 0 ? 10 : i8 * 2;
        if (i9 >= i8) {
            return new C2915k(Arrays.copyOf(c2915k.f24460H, i9), c2915k.f24461I, true);
        }
        throw new IllegalArgumentException();
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, InputStream inputStream) throws C2966x1 {
        T t8 = (T) parsePartialFrom(t7, AbstractC2961w.i(inputStream), O0.b());
        b(t8);
        return t8;
    }

    public static <E> InterfaceC2956u1 mutableCopy(InterfaceC2956u1 interfaceC2956u1) {
        int size = interfaceC2956u1.size();
        return interfaceC2956u1.f(size == 0 ? 10 : size * 2);
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, InputStream inputStream, O0 o4) throws C2966x1 {
        T t8 = (T) parsePartialFrom(t7, AbstractC2961w.i(inputStream), o4);
        b(t8);
        return t8;
    }

    @Override // com.google.protobuf.Q1
    public int getSerializedSize() {
        return getSerializedSize(null);
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, AbstractC2961w abstractC2961w) {
        return (T) parseFrom(t7, abstractC2961w, O0.b());
    }

    public static <T extends AbstractC2909i1> T parseFrom(T t7, AbstractC2961w abstractC2961w, O0 o4) throws C2966x1 {
        T t8 = (T) parsePartialFrom(t7, abstractC2961w, o4);
        b(t8);
        return t8;
    }

    public static <T extends AbstractC2909i1> T parsePartialFrom(T t7, AbstractC2961w abstractC2961w) {
        return (T) parsePartialFrom(t7, abstractC2961w, O0.b());
    }
}

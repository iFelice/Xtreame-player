package com.google.protobuf;

import com.google.protobuf.AbstractC2889d1;
import com.google.protobuf.GeneratedMessageLite$ExtendableMessage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GeneratedMessageLite$ExtendableMessage<MessageType extends GeneratedMessageLite$ExtendableMessage<MessageType, BuilderType>, BuilderType extends AbstractC2889d1> extends AbstractC2909i1 implements R1 {
    protected W0 extensions = W0.f24385d;

    private void eagerlyMergeMessageSetExtension(AbstractC2961w abstractC2961w, C2901g1 c2901g1, O0 o4, int i8) {
        parseExtension(abstractC2961w, o4, c2901g1, (i8 << 3) | 2, i8);
    }

    private void mergeMessageSetExtensionFromBytes(r rVar, O0 o4, C2901g1 c2901g1) throws C2966x1 {
        Q1 q7 = (Q1) this.extensions.f24386a.get(c2901g1.f24438d);
        P1 builder = q7 != null ? q7.toBuilder() : null;
        if (builder == null) {
            builder = c2901g1.f24437c.newBuilderForType();
        }
        AbstractC2875a abstractC2875a = (AbstractC2875a) builder;
        abstractC2875a.getClass();
        try {
            AbstractC2961w abstractC2961wP = rVar.p();
            ((AbstractC2881b1) abstractC2875a).f(abstractC2961wP, o4);
            abstractC2961wP.a(0);
            ensureExtensionsAreMutable().p(c2901g1.f24438d, c2901g1.b(((AbstractC2881b1) builder).b()));
        } catch (C2966x1 e8) {
            throw e8;
        } catch (IOException e9) {
            throw new RuntimeException("Reading " + abstractC2875a.getClass().getName() + " from a ByteString threw an IOException (should never happen).", e9);
        }
    }

    private <MessageType extends Q1> void mergeMessageSetExtensionFromCodedStream(MessageType messagetype, AbstractC2961w abstractC2961w, O0 o4) throws C2966x1 {
        int iG = 0;
        C2939q c2939qN = null;
        C2901g1 c2901g1A = null;
        while (true) {
            int iF = abstractC2961w.F();
            if (iF == 0) {
                break;
            }
            if (iF == 16) {
                iG = abstractC2961w.G();
                if (iG != 0) {
                    c2901g1A = o4.a(iG, messagetype);
                }
            } else if (iF == 26) {
                if (iG == 0 || c2901g1A == null) {
                    c2939qN = abstractC2961w.n();
                } else {
                    eagerlyMergeMessageSetExtension(abstractC2961w, c2901g1A, o4, iG);
                    c2939qN = null;
                }
            } else if (!abstractC2961w.I(iF)) {
                break;
            }
        }
        abstractC2961w.a(12);
        if (c2939qN == null || iG == 0) {
            return;
        }
        if (c2901g1A != null) {
            mergeMessageSetExtensionFromBytes(c2939qN, o4, c2901g1A);
        } else {
            mergeLengthDelimitedField(iG, c2939qN);
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006  */
    private boolean parseExtension(AbstractC2961w abstractC2961w, O0 o4, C2901g1 c2901g1, int i8, int i9) {
        boolean z7;
        Object objB;
        Q1 q7;
        int i10 = i8 & 7;
        boolean z8 = false;
        if (c2901g1 == null) {
            z7 = false;
            z8 = true;
        } else {
            C2897f1 c2897f1 = c2901g1.f24438d;
            S2 s7 = c2897f1.f24427I;
            W0 w7 = W0.f24385d;
            if (i10 == s7.f24309H) {
                z7 = false;
            } else if (c2897f1.f24428J && s7.a() && i10 == 2) {
                z7 = true;
            } else {
                z7 = false;
                z8 = true;
            }
        }
        if (z8) {
            return parseUnknownField(i8, abstractC2961w);
        }
        ensureExtensionsAreMutable();
        if (z7) {
            int iL = abstractC2961w.l(abstractC2961w.x());
            C2897f1 c2897f2 = c2901g1.f24438d;
            if (c2897f2.f24427I == S2.f24306M) {
                while (abstractC2961w.e() > 0) {
                    InterfaceC2933o1 interfaceC2933o1B = c2897f2.f24425G.b(abstractC2961w.p());
                    if (interfaceC2933o1B == null) {
                        return true;
                    }
                    this.extensions.a(c2897f2, c2901g1.b(interfaceC2933o1B));
                }
            } else {
                while (abstractC2961w.e() > 0) {
                    S2 s8 = c2897f2.f24427I;
                    W0 w8 = W0.f24385d;
                    this.extensions.a(c2897f2, AbstractC2907i.V(abstractC2961w, s8, 1));
                }
            }
            abstractC2961w.k(iL);
        } else {
            int iOrdinal = c2901g1.f24438d.f24427I.f24308G.ordinal();
            C2897f1 c2897f3 = c2901g1.f24438d;
            if (iOrdinal == 7) {
                int iP = abstractC2961w.p();
                InterfaceC2933o1 interfaceC2933o1B2 = c2897f3.f24425G.b(iP);
                if (interfaceC2933o1B2 == null) {
                    mergeVarintField(i9, iP);
                    return true;
                }
                objB = interfaceC2933o1B2;
            } else if (iOrdinal != 8) {
                S2 s9 = c2897f3.f24427I;
                W0 w9 = W0.f24385d;
                objB = AbstractC2907i.V(abstractC2961w, s9, 1);
            } else {
                P1 builder = (c2897f3.f24428J || (q7 = (Q1) this.extensions.f24386a.get(c2897f3)) == null) ? null : q7.toBuilder();
                if (builder == null) {
                    builder = c2901g1.f24437c.newBuilderForType();
                }
                if (c2897f3.f24427I == S2.f24304K) {
                    abstractC2961w.t(c2897f3.f24426H, builder, o4);
                } else {
                    abstractC2961w.w(builder, o4);
                }
                objB = ((AbstractC2881b1) builder).b();
            }
            if (c2897f3.f24428J) {
                this.extensions.a(c2897f3, c2901g1.b(objB));
            } else {
                this.extensions.p(c2897f3, c2901g1.b(objB));
            }
        }
        return true;
    }

    private void verifyExtensionContainingType(C2901g1 c2901g1) {
        if (c2901g1.f24435a != getDefaultInstanceForType()) {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
    }

    public W0 ensureExtensionsAreMutable() {
        W0 w7 = this.extensions;
        if (w7.f24387b) {
            this.extensions = w7.clone();
        }
        return this.extensions;
    }

    public boolean extensionsAreInitialized() {
        return this.extensions.j();
    }

    public int extensionsSerializedSize() {
        return this.extensions.h();
    }

    public int extensionsSerializedSizeAsMessageSet() {
        return this.extensions.f();
    }

    @Override // com.google.protobuf.AbstractC2909i1, com.google.protobuf.R1
    public /* bridge */ /* synthetic */ Q1 getDefaultInstanceForType() {
        return getDefaultInstanceForType();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [Type, java.util.ArrayList] */
    public final <Type> Type getExtension(L0 l4) {
        C2901g1 c2901g1Access$000 = AbstractC2909i1.access$000(l4);
        verifyExtensionContainingType(c2901g1Access$000);
        W0 w7 = this.extensions;
        Type type = (Type) w7.f24386a.get(c2901g1Access$000.f24438d);
        if (type == null) {
            return (Type) c2901g1Access$000.f24436b;
        }
        C2897f1 c2897f1 = c2901g1Access$000.f24438d;
        if (!c2897f1.f24428J) {
            return (Type) c2901g1Access$000.a(type);
        }
        if (c2897f1.f24427I.f24308G != T2.ENUM) {
            return type;
        }
        ?? r7 = (Type) new ArrayList();
        Iterator it = ((List) type).iterator();
        while (it.hasNext()) {
            r7.add(c2901g1Access$000.a(it.next()));
        }
        return r7;
    }

    public final <Type> int getExtensionCount(L0 l4) {
        C2901g1 c2901g1Access$000 = AbstractC2909i1.access$000(l4);
        verifyExtensionContainingType(c2901g1Access$000);
        W0 w7 = this.extensions;
        C2897f1 c2897f1 = c2901g1Access$000.f24438d;
        w7.getClass();
        if (!c2897f1.f24428J) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object obj = w7.f24386a.get(c2897f1);
        if (obj == null) {
            return 0;
        }
        return ((List) obj).size();
    }

    public final <Type> boolean hasExtension(L0 l4) {
        C2901g1 c2901g1Access$000 = AbstractC2909i1.access$000(l4);
        verifyExtensionContainingType(c2901g1Access$000);
        W0 w7 = this.extensions;
        C2897f1 c2897f1 = c2901g1Access$000.f24438d;
        w7.getClass();
        if (c2897f1.f24428J) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return w7.f24386a.get(c2897f1) != null;
    }

    public final void mergeExtensionFields(MessageType messagetype) {
        W0 w7 = this.extensions;
        if (w7.f24387b) {
            this.extensions = w7.clone();
        }
        this.extensions.n(messagetype.extensions);
    }

    @Override // com.google.protobuf.AbstractC2909i1, com.google.protobuf.Q1
    public /* bridge */ /* synthetic */ P1 newBuilderForType() {
        return newBuilderForType();
    }

    public C2893e1 newExtensionWriter() {
        return new C2893e1(this);
    }

    public C2893e1 newMessageSetExtensionWriter() {
        return new C2893e1(this);
    }

    public <MessageType extends Q1> boolean parseUnknownField(MessageType messagetype, AbstractC2961w abstractC2961w, O0 o4, int i8) {
        int i9 = i8 >>> 3;
        return parseExtension(abstractC2961w, o4, o4.a(i9, messagetype), i8, i9);
    }

    public <MessageType extends Q1> boolean parseUnknownFieldAsMessageSet(MessageType messagetype, AbstractC2961w abstractC2961w, O0 o4, int i8) throws C2966x1 {
        if (i8 != 11) {
            return (i8 & 7) == 2 ? parseUnknownField(messagetype, abstractC2961w, o4, i8) : abstractC2961w.I(i8);
        }
        mergeMessageSetExtensionFromCodedStream(messagetype, abstractC2961w, o4);
        return true;
    }

    @Override // com.google.protobuf.AbstractC2909i1, com.google.protobuf.Q1
    public /* bridge */ /* synthetic */ P1 toBuilder() {
        return toBuilder();
    }

    public final <Type> Type getExtension(L0 l4, int i8) {
        C2901g1 c2901g1Access$000 = AbstractC2909i1.access$000(l4);
        verifyExtensionContainingType(c2901g1Access$000);
        W0 w7 = this.extensions;
        C2897f1 c2897f1 = c2901g1Access$000.f24438d;
        w7.getClass();
        if (c2897f1.f24428J) {
            Object obj = w7.f24386a.get(c2897f1);
            if (obj != null) {
                return (Type) c2901g1Access$000.a(((List) obj).get(i8));
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }
}

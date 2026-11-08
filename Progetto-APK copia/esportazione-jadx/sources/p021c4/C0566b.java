package p021c4;

import android.util.Log;
import com.google.android.gms.internal.measurement.AbstractC2631s2;
import com.google.android.gms.internal.measurement.C2533b1;
import com.google.android.gms.internal.measurement.C2557f1;
import com.google.android.gms.internal.measurement.C2620q0;
import com.google.android.gms.internal.measurement.C2629s0;
import com.google.android.gms.internal.measurement.C2644v0;
import com.google.android.gms.internal.measurement.C2654x0;
import com.google.android.gms.internal.measurement.C2660y1;
import com.google.android.gms.internal.measurement.C2664z0;
import com.google.android.gms.internal.measurement.H3;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Iterator;
import p132r.f;

/* JADX INFO: renamed from: c4.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0566b extends AbstractC0569c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f11121g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C0572d f11122h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AbstractC2631s2 f11123i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0566b(C0572d c0572d, String str, int i8, AbstractC2631s2 abstractC2631s2, int i9) {
        super(str, i8);
        this.f11121g = i9;
        this.f11122h = c0572d;
        this.f11123i = abstractC2631s2;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0282  */
    /* JADX WARN: Code duplicated, block: B:105:0x0294  */
    /* JADX WARN: Code duplicated, block: B:109:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:111:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:114:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:120:0x02da  */
    /* JADX WARN: Code duplicated, block: B:123:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:125:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:127:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:128:0x0300  */
    /* JADX WARN: Code duplicated, block: B:130:0x0306  */
    /* JADX WARN: Code duplicated, block: B:132:0x030e  */
    /* JADX WARN: Code duplicated, block: B:134:0x0318  */
    /* JADX WARN: Code duplicated, block: B:144:0x033a  */
    /* JADX WARN: Code duplicated, block: B:147:0x0343  */
    /* JADX WARN: Code duplicated, block: B:151:0x036f A[EDGE_INSN: B:151:0x036f->B:154:0x0396 BREAK  A[LOOP:1: B:56:0x0175->B:61:0x0198]] */
    /* JADX WARN: Code duplicated, block: B:152:0x0382  */
    /* JADX WARN: Code duplicated, block: B:193:0x031e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:200:0x01a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x018b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x01c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x01c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x01ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x01e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x01ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x035b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x0349 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x0340 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x0394 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0254 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x0270 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x029a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x02e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:226:0x036d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0168  */
    /* JADX WARN: Code duplicated, block: B:58:0x017b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0198 A[LOOP:1: B:56:0x0175->B:61:0x0198, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:65:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:72:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:78:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:83:0x0205  */
    /* JADX WARN: Code duplicated, block: B:88:0x0235  */
    /* JADX WARN: Code duplicated, block: B:93:0x0249  */
    /* JADX WARN: Code duplicated, block: B:97:0x0262  */
    /* JADX WARN: Code duplicated, block: B:99:0x026a  */
    public final boolean e(Long l4, Long l8, C2533b1 c2533b1, long j8, C0609s c0609s, boolean z7) {
        HashSet hashSet;
        Iterator it;
        f fVar;
        Iterator it2;
        Iterator it3;
        Boolean bool;
        C2629s0 c2629s0;
        boolean z8;
        String strT;
        Object obj;
        String str;
        C2644v0 c2644v0R;
        Iterator it4;
        f fVar2;
        Boolean boolA;
        Boolean boolA2;
        Boolean boolC;
        C2557f1 c2557f1;
        Long lValueOf;
        Double dValueOf;
        C2629s0 c2629s1;
        H3.b();
        C0572d c0572d = this.f11122h;
        C0597l0 c0597l0 = (C0597l0) c0572d.f10616G;
        C0584h c0584h = c0597l0.f11256M;
        D d6 = E.f10723F0;
        String str2 = this.f11128a;
        boolean zB = c0584h.B(str2, d6);
        C2620q0 c2620q0 = (C2620q0) this.f11123i;
        long j9 = c2620q0.B() ? c0609s.f11360e : j8;
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        boolean zIsLoggable = Log.isLoggable(t7.x(), 2);
        Q q7 = t7.f11047T;
        int i8 = this.f11129b;
        O o4 = c0597l0.f11262S;
        if (zIsLoggable) {
            C0597l0.k(t7);
            q7.d(Integer.valueOf(i8), c2620q0.D() ? Integer.valueOf(c2620q0.r()) : null, o4.d(c2620q0.v()), "Evaluating filter. audience, filter, event");
            C0597l0.k(t7);
            E1 e8 = c0572d.f11343H.f10658M;
            A1.I(e8);
            StringBuilder sb = new StringBuilder();
            sb.append("\nevent_filter {\n");
            if (c2620q0.D()) {
                E1.F(sb, 0, "filter_id", Integer.valueOf(c2620q0.r()));
            }
            E1.F(sb, 0, "event_name", ((C0597l0) e8.f10616G).f11262S.d(c2620q0.v()));
            String strC = E1.C(c2620q0.z(), c2620q0.A(), c2620q0.B());
            if (!strC.isEmpty()) {
                E1.F(sb, 0, "filter_type", strC);
            }
            if (c2620q0.C()) {
                E1.G(sb, 1, "event_count_filter", c2620q0.u());
            }
            if (c2620q0.q() > 0) {
                sb.append("  filters {\n");
                Iterator it5 = c2620q0.w().iterator();
                while (it5.hasNext()) {
                    e8.z(sb, 2, (C2629s0) it5.next());
                }
            }
            E1.A(1, sb);
            sb.append("}\n}\n");
            q7.b(sb.toString(), "Filter definition");
        }
        boolean zD = c2620q0.D();
        Q q8 = t7.f11042O;
        if (!zD || c2620q0.r() > 256) {
            C0597l0.k(t7);
            q8.c(T.t(str2), String.valueOf(c2620q0.D() ? Integer.valueOf(c2620q0.r()) : null), "Invalid event filter ID. appId, id");
            return false;
        }
        boolean z9 = c2620q0.z() || c2620q0.A() || c2620q0.B();
        if (z7 && !z9) {
            C0597l0.k(t7);
            q7.c(Integer.valueOf(i8), c2620q0.D() ? Integer.valueOf(c2620q0.r()) : null, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID");
            return true;
        }
        String strW = c2533b1.w();
        if (!c2620q0.C()) {
            hashSet = new HashSet();
            it = c2620q0.w().iterator();
            while (true) {
                if (it.hasNext()) {
                    fVar = new f(0);
                    it2 = c2533b1.x().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            it3 = c2620q0.w().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    bool = Boolean.TRUE;
                                    break;
                                }
                                c2629s0 = (C2629s0) it3.next();
                                if (c2629s0.w() || !c2629s0.v()) {
                                    z8 = false;
                                } else {
                                    z8 = true;
                                }
                                strT = c2629s0.t();
                                if (strT.isEmpty()) {
                                    C0597l0.k(t7);
                                    q8.b(o4.d(strW), "Event has empty param name. event");
                                } else {
                                    obj = fVar.get(strT);
                                    if (obj instanceof Long) {
                                        if (c2629s0.x()) {
                                            boolC = AbstractC0569c.c(((Long) obj).longValue(), c2629s0.r());
                                            if (boolC == null) {
                                                if (boolC.booleanValue() == z8) {
                                                    bool = Boolean.FALSE;
                                                    break;
                                                }
                                            }
                                        } else {
                                            C0597l0.k(t7);
                                            q8.c(o4.d(strW), o4.e(strT), "No number filter for long param. event, param");
                                        }
                                    } else if (obj instanceof Double) {
                                        if (c2629s0.x()) {
                                            double dDoubleValue = ((Double) obj).doubleValue();
                                            try {
                                                boolA2 = AbstractC0569c.a(new BigDecimal(dDoubleValue), c2629s0.r(), Math.ulp(dDoubleValue));
                                            } catch (NumberFormatException unused) {
                                                boolA2 = null;
                                            }
                                            if (boolA2 == null) {
                                                if (boolA2.booleanValue() == z8) {
                                                    bool = Boolean.FALSE;
                                                    break;
                                                }
                                            }
                                        } else {
                                            C0597l0.k(t7);
                                            q8.c(o4.d(strW), o4.e(strT), "No number filter for double param. event, param");
                                        }
                                    } else if (obj instanceof String) {
                                        if (c2629s0.z()) {
                                            C2664z0 c2664z0S = c2629s0.s();
                                            C0597l0.k(t7);
                                            boolA = AbstractC0569c.b((String) obj, c2664z0S, t7);
                                            it4 = it3;
                                            fVar2 = fVar;
                                        } else if (c2629s0.x()) {
                                            str = (String) obj;
                                            if (E1.q(str)) {
                                                c2644v0R = c2629s0.r();
                                                if (E1.q(str)) {
                                                    try {
                                                        it4 = it3;
                                                        fVar2 = fVar;
                                                        try {
                                                            boolA = AbstractC0569c.a(new BigDecimal(str), c2644v0R, 0.0d);
                                                        } catch (NumberFormatException unused2) {
                                                            boolA = null;
                                                        }
                                                    } catch (NumberFormatException unused3) {
                                                        it4 = it3;
                                                        fVar2 = fVar;
                                                    }
                                                } else {
                                                    it4 = it3;
                                                    fVar2 = fVar;
                                                }
                                                boolA = null;
                                            } else {
                                                C0597l0.k(t7);
                                                q8.c(o4.d(strW), o4.e(strT), "Invalid param value for number filter. event, param");
                                            }
                                        } else {
                                            C0597l0.k(t7);
                                            q8.c(o4.d(strW), o4.e(strT), "No filter for String param. event, param");
                                        }
                                        if (boolA == null) {
                                            if (boolA.booleanValue() == z8) {
                                                bool = Boolean.FALSE;
                                                break;
                                            }
                                            fVar = fVar2;
                                            it3 = it4;
                                        }
                                    } else {
                                        if (obj == null) {
                                            C0597l0.k(t7);
                                            q7.c(o4.d(strW), o4.e(strT), "Missing param for filter. event, param");
                                            bool = Boolean.FALSE;
                                            break;
                                        }
                                        C0597l0.k(t7);
                                        q8.c(o4.d(strW), o4.e(strT), "Unknown param type. event, param");
                                    }
                                }
                            }
                        } else {
                            c2557f1 = (C2557f1) it2.next();
                            if (!hashSet.contains(c2557f1.v())) {
                                if (c2557f1.K()) {
                                    String strV = c2557f1.v();
                                    if (c2557f1.K()) {
                                        lValueOf = Long.valueOf(c2557f1.t());
                                    } else {
                                        lValueOf = null;
                                    }
                                    fVar.put(strV, lValueOf);
                                } else if (c2557f1.I()) {
                                    String strV2 = c2557f1.v();
                                    if (c2557f1.I()) {
                                        dValueOf = Double.valueOf(c2557f1.q());
                                    } else {
                                        dValueOf = null;
                                    }
                                    fVar.put(strV2, dValueOf);
                                } else if (c2557f1.M()) {
                                    fVar.put(c2557f1.v(), c2557f1.w());
                                } else {
                                    C0597l0.k(t7);
                                    q8.c(o4.d(strW), o4.e(c2557f1.v()), "Unknown value for param. event, param");
                                }
                            }
                        }
                    }
                } else {
                    c2629s1 = (C2629s0) it.next();
                    if (c2629s1.t().isEmpty()) {
                        C0597l0.k(t7);
                        q8.b(o4.d(strW), "null or empty param name in filter. event");
                    } else {
                        hashSet.add(c2629s1.t());
                    }
                }
                bool = null;
                break;
            }
        }
        Boolean boolC2 = AbstractC0569c.c(j9, c2620q0.u());
        if (boolC2 == null) {
            bool = null;
            break;
        }
        if (boolC2.booleanValue()) {
            hashSet = new HashSet();
            it = c2620q0.w().iterator();
            while (true) {
                if (it.hasNext()) {
                    fVar = new f(0);
                    it2 = c2533b1.x().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            it3 = c2620q0.w().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    bool = Boolean.TRUE;
                                    break;
                                }
                                c2629s0 = (C2629s0) it3.next();
                                if (c2629s0.w()) {
                                    z8 = false;
                                } else {
                                    z8 = false;
                                }
                                strT = c2629s0.t();
                                if (strT.isEmpty()) {
                                    C0597l0.k(t7);
                                    q8.b(o4.d(strW), "Event has empty param name. event");
                                } else {
                                    obj = fVar.get(strT);
                                    if (obj instanceof Long) {
                                        if (c2629s0.x()) {
                                            C0597l0.k(t7);
                                            q8.c(o4.d(strW), o4.e(strT), "No number filter for long param. event, param");
                                        } else {
                                            boolC = AbstractC0569c.c(((Long) obj).longValue(), c2629s0.r());
                                            if (boolC == null) {
                                                if (boolC.booleanValue() == z8) {
                                                    bool = Boolean.FALSE;
                                                    break;
                                                }
                                            }
                                        }
                                    } else if (obj instanceof Double) {
                                        if (c2629s0.x()) {
                                            C0597l0.k(t7);
                                            q8.c(o4.d(strW), o4.e(strT), "No number filter for double param. event, param");
                                        } else {
                                            double dDoubleValue2 = ((Double) obj).doubleValue();
                                            boolA2 = AbstractC0569c.a(new BigDecimal(dDoubleValue2), c2629s0.r(), Math.ulp(dDoubleValue2));
                                            if (boolA2 == null) {
                                                if (boolA2.booleanValue() == z8) {
                                                    bool = Boolean.FALSE;
                                                    break;
                                                }
                                            }
                                        }
                                    } else if (obj instanceof String) {
                                        if (c2629s0.z()) {
                                            C2664z0 c2664z0S2 = c2629s0.s();
                                            C0597l0.k(t7);
                                            boolA = AbstractC0569c.b((String) obj, c2664z0S2, t7);
                                            it4 = it3;
                                            fVar2 = fVar;
                                        } else if (c2629s0.x()) {
                                            str = (String) obj;
                                            if (E1.q(str)) {
                                                c2644v0R = c2629s0.r();
                                                if (E1.q(str)) {
                                                    it4 = it3;
                                                    fVar2 = fVar;
                                                } else {
                                                    it4 = it3;
                                                    fVar2 = fVar;
                                                    boolA = AbstractC0569c.a(new BigDecimal(str), c2644v0R, 0.0d);
                                                }
                                                boolA = null;
                                            } else {
                                                C0597l0.k(t7);
                                                q8.c(o4.d(strW), o4.e(strT), "Invalid param value for number filter. event, param");
                                            }
                                        } else {
                                            C0597l0.k(t7);
                                            q8.c(o4.d(strW), o4.e(strT), "No filter for String param. event, param");
                                        }
                                        if (boolA == null) {
                                            if (boolA.booleanValue() == z8) {
                                                bool = Boolean.FALSE;
                                                break;
                                            }
                                            fVar = fVar2;
                                            it3 = it4;
                                        }
                                    } else {
                                        if (obj == null) {
                                            C0597l0.k(t7);
                                            q7.c(o4.d(strW), o4.e(strT), "Missing param for filter. event, param");
                                            bool = Boolean.FALSE;
                                            break;
                                        }
                                        C0597l0.k(t7);
                                        q8.c(o4.d(strW), o4.e(strT), "Unknown param type. event, param");
                                    }
                                }
                            }
                        } else {
                            c2557f1 = (C2557f1) it2.next();
                            if (!hashSet.contains(c2557f1.v())) {
                                if (c2557f1.K()) {
                                    String strV3 = c2557f1.v();
                                    if (c2557f1.K()) {
                                        lValueOf = Long.valueOf(c2557f1.t());
                                    } else {
                                        lValueOf = null;
                                    }
                                    fVar.put(strV3, lValueOf);
                                } else if (c2557f1.I()) {
                                    String strV4 = c2557f1.v();
                                    if (c2557f1.I()) {
                                        dValueOf = Double.valueOf(c2557f1.q());
                                    } else {
                                        dValueOf = null;
                                    }
                                    fVar.put(strV4, dValueOf);
                                } else if (c2557f1.M()) {
                                    fVar.put(c2557f1.v(), c2557f1.w());
                                } else {
                                    C0597l0.k(t7);
                                    q8.c(o4.d(strW), o4.e(c2557f1.v()), "Unknown value for param. event, param");
                                }
                            }
                        }
                    }
                } else {
                    c2629s1 = (C2629s0) it.next();
                    if (c2629s1.t().isEmpty()) {
                        C0597l0.k(t7);
                        q8.b(o4.d(strW), "null or empty param name in filter. event");
                    } else {
                        hashSet.add(c2629s1.t());
                    }
                }
                bool = null;
                break;
            }
        }
        bool = Boolean.FALSE;
        C0597l0.k(t7);
        q7.b(bool == null ? "null" : bool, "Event filter result");
        if (bool == null) {
            return false;
        }
        Boolean bool2 = Boolean.TRUE;
        this.f11130c = bool2;
        if (!bool.booleanValue()) {
            return true;
        }
        this.f11131d = bool2;
        if (!z9 || !c2533b1.I()) {
            return true;
        }
        Long lValueOf2 = Long.valueOf(c2533b1.t());
        if (c2620q0.A()) {
            if (zB && c2620q0.C()) {
                lValueOf2 = l4;
            }
            this.f11133f = lValueOf2;
            return true;
        }
        if (zB && c2620q0.C()) {
            lValueOf2 = l8;
        }
        this.f11132e = lValueOf2;
        return true;
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
    public final boolean f(Long l4, Long l8, C2660y1 c2660y1, boolean z7) {
        H3.b();
        C0597l0 c0597l0 = (C0597l0) this.f11122h.f10616G;
        boolean zB = c0597l0.f11256M.B(this.f11128a, E.f10719D0);
        C2654x0 c2654x0 = (C2654x0) this.f11123i;
        boolean zV = c2654x0.v();
        boolean zW = c2654x0.w();
        boolean zX = c2654x0.x();
        boolean z8 = zV || zW || zX;
        Boolean boolD = null;
        boolA = null;
        Boolean boolA = null;
        boolD = null;
        boolD = null;
        boolD = null;
        Boolean boolA2 = null;
        boolD = null;
        T t7 = c0597l0.f11258O;
        if (z7 && !z8) {
            C0597l0.k(t7);
            t7.f11047T.c(Integer.valueOf(this.f11129b), c2654x0.y() ? Integer.valueOf(c2654x0.q()) : null, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID");
            return true;
        }
        C2629s0 c2629s0R = c2654x0.r();
        boolean zV2 = c2629s0R.v();
        boolean zH = c2660y1.H();
        O o4 = c0597l0.f11262S;
        if (zH) {
            if (c2629s0R.x()) {
                boolD = AbstractC0569c.d(AbstractC0569c.c(c2660y1.s(), c2629s0R.r()), zV2);
            } else {
                C0597l0.k(t7);
                t7.f11042O.b(o4.f(c2660y1.v()), "No number filter for long property. property");
            }
        } else if (c2660y1.F()) {
            if (c2629s0R.x()) {
                double dQ = c2660y1.q();
                try {
                    boolA = AbstractC0569c.a(new BigDecimal(dQ), c2629s0R.r(), Math.ulp(dQ));
                } catch (NumberFormatException unused) {
                }
                boolD = AbstractC0569c.d(boolA, zV2);
            } else {
                C0597l0.k(t7);
                t7.f11042O.b(o4.f(c2660y1.v()), "No number filter for double property. property");
            }
        } else if (!c2660y1.J()) {
            C0597l0.k(t7);
            t7.f11042O.b(o4.f(c2660y1.v()), "User property has no value, property");
        } else if (c2629s0R.z()) {
            String strW = c2660y1.w();
            C2664z0 c2664z0S = c2629s0R.s();
            C0597l0.k(t7);
            boolD = AbstractC0569c.d(AbstractC0569c.b(strW, c2664z0S, t7), zV2);
        } else if (!c2629s0R.x()) {
            C0597l0.k(t7);
            t7.f11042O.b(o4.f(c2660y1.v()), "No string or number filter defined. property");
        } else if (E1.q(c2660y1.w())) {
            String strW2 = c2660y1.w();
            C2644v0 c2644v0R = c2629s0R.r();
            if (E1.q(strW2)) {
                try {
                    boolA2 = AbstractC0569c.a(new BigDecimal(strW2), c2644v0R, 0.0d);
                } catch (NumberFormatException unused2) {
                }
            }
            boolD = AbstractC0569c.d(boolA2, zV2);
        } else {
            C0597l0.k(t7);
            t7.f11042O.c(o4.f(c2660y1.v()), c2660y1.w(), "Invalid user property value for Numeric number filter. property, value");
        }
        C0597l0.k(t7);
        t7.f11047T.b(boolD == null ? "null" : boolD, "Property filter result");
        if (boolD == null) {
            return false;
        }
        this.f11130c = Boolean.TRUE;
        if (zX && !boolD.booleanValue()) {
            return true;
        }
        if (!z7 || c2654x0.v()) {
            this.f11131d = boolD;
        }
        if (boolD.booleanValue() && z8 && c2660y1.I()) {
            long jT = c2660y1.t();
            if (l4 != null) {
                jT = l4.longValue();
            }
            if (zB && c2654x0.v() && !c2654x0.w() && l8 != null) {
                jT = l8.longValue();
            }
            if (c2654x0.w()) {
                this.f11133f = Long.valueOf(jT);
            } else {
                this.f11132e = Long.valueOf(jT);
            }
        }
        return true;
    }
}

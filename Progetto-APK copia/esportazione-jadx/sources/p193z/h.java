package p193z;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.internal.pal.C2723g6;
import com.google.android.gms.internal.pal.C2778n5;
import com.google.android.gms.internal.pal.C2794p5;
import com.google.android.gms.internal.pal.C2841v5;
import com.google.android.gms.internal.pal.C2851x;
import com.google.android.gms.internal.pal.C2857x5;
import com.google.android.gms.internal.pal.F3;
import com.google.android.gms.internal.pal.H3;
import com.google.android.gms.internal.pal.L;
import com.google.android.gms.internal.pal.V3;
import com.google.android.gms.internal.pal.W4;
import com.google.android.gms.internal.pal.Y4;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Locale;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.xmlpull.v1.XmlPullParserException;
import p016c.g;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f31561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f31563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f31564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f31565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f31566f;

    public h(C2723g6 c2723g6) throws GeneralSecurityException {
        String strP = c2723g6.p();
        this.f31563c = strP;
        if (strP.equals(H3.f23543b)) {
            try {
                C2794p5 c2794p5O = C2794p5.o(c2723g6.o(), C2851x.a());
                this.f31564d = (C2778n5) F3.b(c2723g6);
                this.f31561a = c2794p5O.m();
                return;
            } catch (L e8) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e8);
            }
        }
        if (strP.equals(H3.f23542a)) {
            try {
                Y4 y4N = Y4.n(c2723g6.o(), C2851x.a());
                this.f31565e = (W4) F3.b(c2723g6);
                int iM = y4N.o().m();
                this.f31562b = iM;
                this.f31561a = iM + y4N.p().m();
                return;
            } catch (L e9) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e9);
            }
        }
        if (!strP.equals(V3.f23676a)) {
            throw new GeneralSecurityException("unsupported AEAD DEM key type: ".concat(String.valueOf(strP)));
        }
        try {
            C2857x5 c2857x5O = C2857x5.o(c2723g6.o(), C2851x.a());
            this.f31566f = (C2841v5) F3.b(c2723g6);
            this.f31561a = c2857x5O.m();
        } catch (L e10) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:86:0x013f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(Context context, XmlResourceParser xmlResourceParser) {
        byte b8;
        o oVar = new o();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i8 = 0; i8 < attributeCount; i8++) {
            String attributeName = xmlResourceParser.getAttributeName(i8);
            String attributeValue = xmlResourceParser.getAttributeValue(i8);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains(MqttTopic.TOPIC_LEVEL_SEPARATOR) ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    int eventType = xmlResourceParser.getEventType();
                    j jVarC = null;
                    while (eventType != 1) {
                        if (eventType == 0) {
                            xmlResourceParser.getName();
                        } else if (eventType == 2) {
                            switch (xmlResourceParser.getName()) {
                                case "Constraint":
                                    jVarC = o.c(context, Xml.asAttributeSet(xmlResourceParser), false);
                                    break;
                                case "ConstraintOverride":
                                    jVarC = o.c(context, Xml.asAttributeSet(xmlResourceParser), true);
                                    break;
                                case "Guideline":
                                    jVarC = o.c(context, Xml.asAttributeSet(xmlResourceParser), false);
                                    jVarC.f31582d.f31612a = true;
                                    break;
                                case "Barrier":
                                    jVarC = o.c(context, Xml.asAttributeSet(xmlResourceParser), false);
                                    jVarC.f31582d.f31627h0 = 1;
                                    break;
                                case "PropertySet":
                                    if (jVarC == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    jVarC.f31580b.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                    break;
                                case "Transform":
                                    if (jVarC == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    jVarC.f31583e.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                    break;
                                case "Layout":
                                    if (jVarC == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    jVarC.f31582d.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                    break;
                                case "Motion":
                                    if (jVarC == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    jVarC.f31581c.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                    break;
                                case "CustomAttribute":
                                case "CustomMethod":
                                    if (jVarC == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    b.a(context, xmlResourceParser, jVarC.f31584f);
                                    break;
                                    break;
                            }
                        } else if (eventType == 3) {
                            String lowerCase = xmlResourceParser.getName().toLowerCase(Locale.ROOT);
                            switch (lowerCase.hashCode()) {
                                case -2075718416:
                                    if (lowerCase.equals("guideline")) {
                                        b8 = 3;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -190376483:
                                    if (lowerCase.equals("constraint")) {
                                        b8 = 1;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 426575017:
                                    if (lowerCase.equals("constraintoverride")) {
                                        b8 = 2;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 2146106725:
                                    if (lowerCase.equals("constraintset")) {
                                        b8 = 0;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                default:
                                    b8 = -1;
                                    break;
                            }
                            if (b8 == 0) {
                                ((SparseArray) this.f31565e).put(identifier, oVar);
                                return;
                            } else if (b8 == 1 || b8 == 2 || b8 == 3) {
                                oVar.f31686c.put(Integer.valueOf(jVarC.f31579a), jVarC);
                                jVarC = null;
                            }
                        }
                        eventType = xmlResourceParser.next();
                    }
                } catch (IOException e8) {
                    Log.e("ConstraintSet", "Error parsing XML resource", e8);
                } catch (XmlPullParserException e9) {
                    Log.e("ConstraintSet", "Error parsing XML resource", e9);
                }
                ((SparseArray) this.f31565e).put(identifier, oVar);
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0077  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public h(Context context, ConstraintLayout constraintLayout, int i8) {
        this.f31561a = -1;
        this.f31562b = -1;
        this.f31564d = new SparseArray();
        this.f31565e = new SparseArray();
        g gVar = null;
        this.f31566f = null;
        this.f31563c = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i8);
        try {
            int eventType = xml.getEventType();
            while (true) {
                byte b8 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (!name.equals("ConstraintSet")) {
                                b8 = -1;
                            } else {
                                b8 = 4;
                            }
                            break;
                        case 80204913:
                            if (!name.equals("State")) {
                                b8 = -1;
                            } else {
                                b8 = 2;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b8 = -1;
                            }
                            break;
                        case 1657696882:
                            if (!name.equals("layoutDescription")) {
                                b8 = -1;
                            } else {
                                b8 = 0;
                            }
                            break;
                        case 1901439077:
                            if (!name.equals("Variant")) {
                                b8 = -1;
                            } else {
                                b8 = 3;
                            }
                            break;
                        default:
                            b8 = -1;
                            break;
                    }
                    if (b8 == 2) {
                        gVar = new g(context, xml);
                        ((SparseArray) this.f31564d).put(gVar.f10554H, gVar);
                    } else if (b8 == 3) {
                        g gVar2 = new g(context, xml);
                        if (gVar != null) {
                            ((ArrayList) gVar.f10556J).add(gVar2);
                        }
                    } else if (b8 == 4) {
                        a(context, xml);
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e8) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i8, e8);
        } catch (XmlPullParserException e9) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i8, e9);
        }
    }
}

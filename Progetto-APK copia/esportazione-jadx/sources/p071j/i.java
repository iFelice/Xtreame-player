package p071j;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParserException;
import p031e.a;
import p079k.o;
import p079k.r;
import p086l.AbstractC3054t0;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class i extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class[] f25644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Class[] f25645f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f25646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f25647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f25648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f25649d;

    static {
        Class[] clsArr = {Context.class};
        f25644e = clsArr;
        f25645f = clsArr;
    }

    public i(Context context) {
        super(context);
        this.f25648c = context;
        Object[] objArr = {context};
        this.f25646a = objArr;
        this.f25647b = objArr;
    }

    public static Object a(Context context) {
        return (!(context instanceof Activity) && (context instanceof ContextWrapper)) ? a(((ContextWrapper) context).getBaseContext()) : context;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i8;
        ColorStateList colorStateList;
        h hVar = new h(this, menu);
        int eventType = xmlResourceParser.getEventType();
        do {
            i8 = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
                break;
            }
            eventType = xmlResourceParser.next();
        } while (eventType != 1);
        boolean z7 = false;
        boolean z8 = false;
        String str = null;
        while (!z7) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != i8) {
                if (eventType == 3) {
                    String name2 = xmlResourceParser.getName();
                    if (z8 && name2.equals(str)) {
                        z8 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        hVar.f25619b = 0;
                        hVar.f25620c = 0;
                        hVar.f25621d = 0;
                        hVar.f25622e = 0;
                        hVar.f25623f = true;
                        hVar.f25624g = true;
                    } else if (name2.equals("item")) {
                        if (!hVar.f25625h) {
                            r rVar = hVar.f25643z;
                            if (rVar == null || !rVar.f25878b.hasSubMenu()) {
                                hVar.f25625h = true;
                                hVar.b(hVar.f25618a.add(hVar.f25619b, hVar.f25626i, hVar.f25627j, hVar.f25628k));
                            } else {
                                hVar.f25625h = true;
                                hVar.b(hVar.f25618a.addSubMenu(hVar.f25619b, hVar.f25626i, hVar.f25627j, hVar.f25628k).getItem());
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z7 = true;
                    }
                }
            } else if (!z8) {
                String name3 = xmlResourceParser.getName();
                boolean zEquals = name3.equals("group");
                i iVar = hVar.f25617E;
                if (zEquals) {
                    TypedArray typedArrayObtainStyledAttributes = iVar.f25648c.obtainStyledAttributes(attributeSet, a.f24701p);
                    hVar.f25619b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                    hVar.f25620c = typedArrayObtainStyledAttributes.getInt(3, 0);
                    hVar.f25621d = typedArrayObtainStyledAttributes.getInt(4, 0);
                    hVar.f25622e = typedArrayObtainStyledAttributes.getInt(5, 0);
                    hVar.f25623f = typedArrayObtainStyledAttributes.getBoolean(2, true);
                    hVar.f25624g = typedArrayObtainStyledAttributes.getBoolean(0, true);
                    typedArrayObtainStyledAttributes.recycle();
                } else if (name3.equals("item")) {
                    Context context = iVar.f25648c;
                    u uVar = new u(context, context.obtainStyledAttributes(attributeSet, a.f24702q));
                    hVar.f25626i = uVar.z(2, 0);
                    hVar.f25627j = (uVar.x(5, hVar.f25620c) & (-65536)) | (uVar.x(6, hVar.f25621d) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                    hVar.f25628k = uVar.C(7);
                    hVar.f25629l = uVar.C(8);
                    hVar.f25630m = uVar.z(0, 0);
                    String strA = uVar.A(9);
                    hVar.f25631n = strA == null ? (char) 0 : strA.charAt(0);
                    hVar.f25632o = uVar.x(16, 4096);
                    String strA2 = uVar.A(10);
                    hVar.f25633p = strA2 == null ? (char) 0 : strA2.charAt(0);
                    hVar.f25634q = uVar.x(20, 4096);
                    if (uVar.F(11)) {
                        hVar.f25635r = uVar.n(11, false) ? 1 : 0;
                    } else {
                        hVar.f25635r = hVar.f25622e;
                    }
                    hVar.f25636s = uVar.n(3, false);
                    hVar.f25637t = uVar.n(4, hVar.f25623f);
                    hVar.f25638u = uVar.n(1, hVar.f25624g);
                    hVar.f25639v = uVar.x(21, -1);
                    hVar.f25642y = uVar.A(12);
                    hVar.f25640w = uVar.z(13, 0);
                    hVar.f25641x = uVar.A(15);
                    String strA3 = uVar.A(14);
                    boolean z9 = strA3 != null;
                    if (z9 && hVar.f25640w == 0 && hVar.f25641x == null) {
                        hVar.f25643z = (r) hVar.a(strA3, f25645f, iVar.f25647b);
                    } else {
                        if (z9) {
                            Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                        }
                        hVar.f25643z = null;
                    }
                    hVar.f25613A = uVar.C(17);
                    hVar.f25614B = uVar.C(22);
                    if (uVar.F(19)) {
                        hVar.f25616D = AbstractC3054t0.c(uVar.x(19, -1), hVar.f25616D);
                        colorStateList = null;
                    } else {
                        colorStateList = null;
                        hVar.f25616D = null;
                    }
                    if (uVar.F(18)) {
                        hVar.f25615C = uVar.o(18);
                    } else {
                        hVar.f25615C = colorStateList;
                    }
                    uVar.P();
                    hVar.f25625h = false;
                } else if (name3.equals("menu")) {
                    hVar.f25625h = true;
                    SubMenu subMenuAddSubMenu = hVar.f25618a.addSubMenu(hVar.f25619b, hVar.f25626i, hVar.f25627j, hVar.f25628k);
                    hVar.b(subMenuAddSubMenu.getItem());
                    b(xmlResourceParser, attributeSet, subMenuAddSubMenu);
                } else {
                    str = name3;
                    z8 = true;
                }
            }
            eventType = xmlResourceParser.next();
            i8 = 2;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i8, Menu menu) {
        if (!(menu instanceof I.a)) {
            super.inflate(i8, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z7 = false;
        try {
            try {
                layout = this.f25648c.getResources().getLayout(i8);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof o) {
                    o oVar = (o) menu;
                    if (!oVar.f25836p) {
                        oVar.w();
                        z7 = true;
                    }
                }
                b(layout, attributeSetAsAttributeSet, menu);
                if (z7) {
                    ((o) menu).v();
                }
                layout.close();
            } catch (IOException e8) {
                throw new InflateException("Error inflating menu XML", e8);
            } catch (XmlPullParserException e9) {
                throw new InflateException("Error inflating menu XML", e9);
            }
        } catch (Throwable th) {
            if (z7) {
                ((o) menu).v();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}

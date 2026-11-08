package p007a6;

import Z5.C0447d;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import p015b6.j;
import p015b6.k;
import p015b6.m;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0447d f8710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0447d f8711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C0447d f8712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C0447d f8713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0447d f8714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C0447d f8715i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Method f8716j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Method f8717k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Method f8718l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Method f8719m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Method f8720n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Method f8721o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Constructor f8722p;

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6;
        Constructor<?> constructor;
        Logger logger = i.f8723b;
        Class<?> cls = Boolean.TYPE;
        f8710d = new C0447d(null, "setUseSessionTickets", new Class[]{cls});
        f8711e = new C0447d(null, "setHostname", new Class[]{String.class});
        f8712f = new C0447d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
        f8713g = new C0447d(null, "setAlpnProtocols", new Class[]{byte[].class});
        f8714h = new C0447d(byte[].class, "getNpnSelectedProtocol", new Class[0]);
        f8715i = new C0447d(null, "setNpnProtocols", new Class[]{byte[].class});
        try {
            method = SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
            try {
                method3 = SSLParameters.class.getMethod("getApplicationProtocols", new Class[0]);
                try {
                    try {
                        method4 = SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]);
                        try {
                            Class<?> cls2 = Class.forName("android.net.ssl.SSLSockets");
                            method2 = cls2.getMethod("isSupportedSocket", SSLSocket.class);
                            try {
                                method5 = cls2.getMethod("setUseSessionTickets", SSLSocket.class, cls);
                            } catch (ClassNotFoundException e8) {
                                e = e8;
                                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                                method5 = null;
                            } catch (NoSuchMethodException e9) {
                                e = e9;
                                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                                method5 = null;
                            }
                        } catch (ClassNotFoundException e10) {
                            e = e10;
                            method2 = null;
                        } catch (NoSuchMethodException e11) {
                            e = e11;
                            method2 = null;
                        }
                    } catch (ClassNotFoundException e12) {
                        e = e12;
                        method2 = null;
                        method4 = null;
                        logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        f8718l = method;
                        f8719m = method3;
                        f8720n = method4;
                        f8716j = method2;
                        f8717k = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        f8721o = method6;
                        f8722p = constructor;
                    } catch (NoSuchMethodException e13) {
                        e = e13;
                        method2 = null;
                        method4 = null;
                        logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        f8718l = method;
                        f8719m = method3;
                        f8720n = method4;
                        f8716j = method2;
                        f8717k = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        f8721o = method6;
                        f8722p = constructor;
                    }
                    method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                    try {
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    } catch (ClassNotFoundException e14) {
                        e = e14;
                        logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                        constructor = null;
                    } catch (NoSuchMethodException e15) {
                        e = e15;
                        logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                        constructor = null;
                    }
                } catch (ClassNotFoundException e16) {
                    e = e16;
                    method6 = null;
                } catch (NoSuchMethodException e17) {
                    e = e17;
                    method6 = null;
                }
            } catch (ClassNotFoundException e18) {
                e = e18;
                method2 = null;
                method3 = null;
                method4 = null;
                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                method5 = null;
                f8718l = method;
                f8719m = method3;
                f8720n = method4;
                f8716j = method2;
                f8717k = method5;
                method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                f8721o = method6;
                f8722p = constructor;
            } catch (NoSuchMethodException e19) {
                e = e19;
                method2 = null;
                method3 = null;
                method4 = null;
                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                method5 = null;
                f8718l = method;
                f8719m = method3;
                f8720n = method4;
                f8716j = method2;
                f8717k = method5;
                method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                f8721o = method6;
                f8722p = constructor;
            }
        } catch (ClassNotFoundException e20) {
            e = e20;
            method = null;
        } catch (NoSuchMethodException e21) {
            e = e21;
            method = null;
        }
        f8718l = method;
        f8719m = method3;
        f8720n = method4;
        f8716j = method2;
        f8717k = method5;
        f8721o = method6;
        f8722p = constructor;
    }

    @Override // p007a6.i
    public final void a(SSLSocket sSLSocket, String str, List list) {
        Constructor constructor;
        boolean z7;
        Method method;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((k) it.next()).f9929G);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        if (str != null) {
            try {
                try {
                    if (i.c(str)) {
                        Method method2 = f8716j;
                        if (method2 == null || !((Boolean) method2.invoke(null, sSLSocket)).booleanValue()) {
                            f8710d.d(new Object[]{Boolean.TRUE}, sSLSocket);
                        } else {
                            f8717k.invoke(null, sSLSocket, Boolean.TRUE);
                        }
                        Method method3 = f8721o;
                        if (method3 == null || (constructor = f8722p) == null) {
                            f8711e.d(new Object[]{str}, sSLSocket);
                        } else {
                            method3.invoke(sSLParameters, Collections.singletonList(constructor.newInstance(str)));
                        }
                    }
                } catch (IllegalAccessException e8) {
                    throw new RuntimeException(e8);
                } catch (InstantiationException e9) {
                    throw new RuntimeException(e9);
                }
            } catch (InvocationTargetException e10) {
                throw new RuntimeException(e10);
            }
        }
        Method method4 = f8720n;
        if (method4 != null) {
            try {
                method4.invoke(sSLSocket, new Object[0]);
                f8718l.invoke(sSLParameters, strArr);
                z7 = true;
            } catch (InvocationTargetException e11) {
                if (!(e11.getTargetException() instanceof UnsupportedOperationException)) {
                    throw e11;
                }
                i.f8723b.log(Level.FINER, "setApplicationProtocol unsupported, will try old methods");
                z7 = false;
            }
        } else {
            z7 = false;
        }
        sSLSocket.setSSLParameters(sSLParameters);
        if (z7 && (method = f8719m) != null && Arrays.equals(strArr, (String[]) method.invoke(sSLSocket.getSSLParameters(), new Object[0]))) {
            return;
        }
        Object[] objArr = {j.b(list)};
        j jVar = this.f8725a;
        if (jVar.e() == 1) {
            f8713g.e(objArr, sSLSocket);
        }
        if (jVar.e() == 3) {
            throw new RuntimeException("We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS");
        }
        f8715i.e(objArr, sSLSocket);
    }

    @Override // p007a6.i
    public final String b(SSLSocket sSLSocket) {
        Logger logger = i.f8723b;
        Method method = f8720n;
        if (method != null) {
            try {
                return (String) method.invoke(sSLSocket, new Object[0]);
            } catch (IllegalAccessException e8) {
                throw new RuntimeException(e8);
            } catch (InvocationTargetException e9) {
                if (!(e9.getTargetException() instanceof UnsupportedOperationException)) {
                    throw new RuntimeException(e9);
                }
                logger.log(Level.FINER, "Socket unsupported for getApplicationProtocol, will try old methods");
            }
        }
        j jVar = this.f8725a;
        if (jVar.e() == 1) {
            try {
                byte[] bArr = (byte[]) f8712f.e(new Object[0], sSLSocket);
                if (bArr != null) {
                    return new String(bArr, m.f9938b);
                }
            } catch (Exception e10) {
                logger.log(Level.FINE, "Failed calling getAlpnSelectedProtocol()", (Throwable) e10);
            }
        }
        if (jVar.e() == 3) {
            return null;
        }
        try {
            byte[] bArr2 = (byte[]) f8714h.e(new Object[0], sSLSocket);
            if (bArr2 != null) {
                return new String(bArr2, m.f9938b);
            }
            return null;
        } catch (Exception e11) {
            logger.log(Level.FINE, "Failed calling getNpnSelectedProtocol()", (Throwable) e11);
            return null;
        }
    }

    @Override // p007a6.i
    public final String d(SSLSocket sSLSocket, String str, List list) {
        String strB = b(sSLSocket);
        return strB == null ? super.d(sSLSocket, str, list) : strB;
    }
}

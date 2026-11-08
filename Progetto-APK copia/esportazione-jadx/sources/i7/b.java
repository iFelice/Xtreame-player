package i7;

import B0.M0;
import U0.r;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.internal.measurement.T1;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.RunnableC3002q;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f25585a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static MqttClient f25586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Handler f25587c = new Handler();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static SharedPreferences f25588d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f25589e = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f25590f = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f25591g = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f25592h = HttpUrl.FRAGMENT_ENCODE_SET;

    public b(Activity activity, boolean z7) {
        String str;
        SharedPreferences sharedPreferences = activity.getSharedPreferences("pe.hf.black20", 0);
        f25588d = sharedPreferences;
        f25591g = sharedPreferences.getString("customerid", null);
        f25592h = f25588d.getString("did", null);
        f25585a = f25588d.getString("mqtt_url", null);
        if (z7) {
            str = f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + f25592h;
        } else {
            f25589e = d(activity);
            String string = OTRApp.f29417G.getString(R.string.app_name);
            f25590f = string;
            f25590f = string.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
            str = f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + f25589e + MqttTopic.TOPIC_LEVEL_SEPARATOR + f25592h;
        }
        try {
            MqttClient mqttClient = new MqttClient(f25585a, str, new MemoryPersistence());
            f25586b = mqttClient;
            mqttClient.setCallback(new a(this, activity, z7));
            Log.d("XCIPTV_TAG", "Connection Trying.....connect called");
            new Thread(new M0(activity, z7)).start();
        } catch (MqttException unused) {
        }
    }

    public static void a(b bVar, Context context, String str) {
        bVar.getClass();
        e("Player settings has been removed", str);
        Methods.U(OTRApp.f29417G);
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC3002q(context, 2), 5000L);
    }

    public static void b() {
        Log.d("XCIPTV_TAG", "disconnectFromApp called------------------------------------");
        e(f25591g + ":" + f25592h + "---disconnected", "client/status/android");
        new Handler(Looper.getMainLooper()).postDelayed(new T1(4), 300L);
    }

    public static String c(Context context) {
        boolean zContains = f25588d.contains("public_ip_address");
        String property = HttpUrl.FRAGMENT_ENCODE_SET;
        String string = zContains ? f25588d.getString("public_ip_address", null) : HttpUrl.FRAGMENT_ENCODE_SET;
        try {
            property = System.getProperty("http.agent");
        } catch (Exception unused) {
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put("appname", OTRApp.f29417G.getString(R.string.app_name));
            jSONObject.put("username", d(context));
            jSONObject.put("ver", "v7.0-2001");
            jSONObject.put("uid", f25588d.getString("did", null));
            jSONObject.put("cid", f25588d.getString("customerid", null));
            jSONObject.put("ip", string);
            jSONObject.put("agent", property);
            jSONObject.put("player_agent", f25588d.getString("agent", null));
            jSONObject.put("package", "pe.hf.black20");
            jSONObject.put("os_ver", Build.VERSION.RELEASE);
            jSONObject.put("model", Build.MANUFACTURER + "-" + Build.MODEL);
            SharedPreferences sharedPreferences = Methods.f29416a;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, 0);
            jSONObject.put("time", simpleDateFormat.format(calendar.getTime()));
            jSONObject2.put("msg", jSONObject);
        } catch (JSONException unused2) {
        }
        return String.valueOf(jSONObject);
    }

    public static String d(Context context) {
        c7.a aVar = new c7.a(context, 0);
        try {
            String strA = Encrypt.a(aVar.f0(q0.q().c("ORT_PROFILE", "Default (XC)")).f25480c);
            aVar.close();
            return strA;
        } catch (Throwable th) {
            try {
                aVar.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void e(String str, String str2) {
        MqttClient mqttClient = f25586b;
        if (mqttClient == null || !mqttClient.isConnected()) {
            return;
        }
        new Thread(new r(20, str, str2)).start();
    }

    public static void f(Context context) {
        Log.d("XCIPTV_TAG", "MQTT Client Reconnect Trying--------------------------------");
        f25587c.postDelayed(new RunnableC3002q(context, 1), 5000L);
    }

    public static void g(boolean z7) {
        try {
            if (z7) {
                f25586b.subscribe(f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + f25592h + MqttTopic.MULTI_LEVEL_WILDCARD_PATTERN);
            } else {
                String string = OTRApp.f29417G.getString(R.string.app_name);
                string.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                f25586b.subscribe(f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + f25589e + MqttTopic.TOPIC_LEVEL_SEPARATOR + f25592h + MqttTopic.MULTI_LEVEL_WILDCARD_PATTERN);
                MqttClient mqttClient = f25586b;
                StringBuilder sb = new StringBuilder();
                sb.append(f25591g);
                sb.append("/ann/");
                sb.append(string);
                mqttClient.subscribe(sb.toString());
            }
        } catch (MqttException unused) {
        }
    }
}

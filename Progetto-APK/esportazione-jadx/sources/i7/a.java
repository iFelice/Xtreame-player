package i7;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallbackExtended;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.RunnableC3002q;
import p064i0.c;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements MqttCallbackExtended {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f25582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f25583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f25584c;

    public a(b bVar, Activity activity, boolean z7) {
        this.f25584c = bVar;
        this.f25582a = activity;
        this.f25583b = z7;
    }

    @Override // org.eclipse.paho.client.mqttv3.MqttCallbackExtended
    public final void connectComplete(boolean z7, String str) {
        if (z7) {
            Log.i("XCIPTV_TAG", "connectComplete------------------------------");
            b.e(b.f25591g + ":" + b.f25592h + "---" + b.c(this.f25582a), "client/status/android");
        }
    }

    @Override // org.eclipse.paho.client.mqttv3.MqttCallback
    public final void connectionLost(Throwable th) {
        Log.d("XCIPTV_TAG", "Connection Lost");
        if (this.f25583b) {
            return;
        }
        b.f(this.f25582a);
    }

    @Override // org.eclipse.paho.client.mqttv3.MqttCallback
    public final void deliveryComplete(IMqttDeliveryToken iMqttDeliveryToken) {
        Log.d("XCIPTV_TAG", "Delivery Completed ------------");
    }

    @Override // org.eclipse.paho.client.mqttv3.MqttCallback
    public final void messageArrived(String str, MqttMessage mqttMessage) {
        String str2;
        String str3 = b.f25585a;
        String str4 = new String(mqttMessage.getPayload());
        Log.d("XCIPTV_TAG", "Message Arrived");
        Log.i("XCIPTV_TAG", "-------------------------------------------------");
        Log.i("XCIPTV_TAG", "| Topic: " + str);
        Log.i("XCIPTV_TAG", "| Message: ".concat(str4));
        Log.i("XCIPTV_TAG", "-------------------------------------------------");
        boolean zEquals = str.equals(b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25592h + "/login");
        b bVar = this.f25584c;
        Context context = this.f25582a;
        try {
            if (zEquals) {
                JSONObject jSONObject = new JSONObject(str4);
                Log.d("XCIPTV_TAG", "Server: " + jSONObject.getString("server"));
                Log.d("XCIPTV_TAG", "User: " + jSONObject.getString("user"));
                Log.d("XCIPTV_TAG", "Pass: " + jSONObject.getString("pass"));
                SharedPreferences.Editor editorEdit = b.f25588d.edit();
                editorEdit.putString("xciptv_profile", "Default (XC)");
                editorEdit.putString("whichPanel", "xtreamcodes");
                editorEdit.apply();
                c7.a aVar = new c7.a(context, 0);
                try {
                    aVar.O("Default (XC)", jSONObject.getString("pass"), jSONObject.getString("user"), jSONObject.getString("server"));
                    aVar.close();
                    String str5 = b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + "/restartapp";
                    bVar.getClass();
                    b.e("Restarting! Please wait 5 Seconds", str5);
                    new Handler(Looper.getMainLooper()).postDelayed(new RunnableC3002q(context, 4), 1000);
                    return;
                } catch (Throwable th) {
                    try {
                        aVar.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            if (str.equals(b.f25591g + "/ann/" + b.f25590f)) {
                SharedPreferences.Editor editorEdit2 = b.f25588d.edit();
                JSONObject jSONObject2 = new JSONObject(str4);
                editorEdit2.putString("announcement", jSONObject2.getString("ann_announcement"));
                editorEdit2.putString("ann_status", jSONObject2.getString("ann_status"));
                editorEdit2.putString("ann_expire", jSONObject2.getString("ann_expire"));
                editorEdit2.putString("ann_interval", jSONObject2.getString("ann_interal"));
                editorEdit2.putString("ann_disappear", jSONObject2.getString("ann_disappear"));
                editorEdit2.apply();
                Intent intent = new Intent("PlayStreamEPGActivityProgramAndMessageReceiver");
                intent.putExtra("what", "ann");
                c.a(OTRApp.f29417G).c(intent);
                return;
            }
            String str6 = b.f25591g + '/' + b.f25589e + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25592h;
            if (str.equals(str6 + "/msg")) {
                String str7 = b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + "/message";
                bVar.getClass();
                b.e("Message received", str7);
                SharedPreferences.Editor editorEdit3 = b.f25588d.edit();
                editorEdit3.putString("msg_txt", str4);
                editorEdit3.putString("msg_status", "ACTIVE");
                SharedPreferences sharedPreferences = Methods.f29416a;
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Calendar calendar = Calendar.getInstance();
                str2 = "/message";
                calendar.add(5, 2);
                editorEdit3.putString("msg_expire", simpleDateFormat.format(calendar.getTime()));
                editorEdit3.apply();
                editorEdit3.commit();
                if (q0.q().a("ORT_isPlayStreamEPGActivityVisible", false)) {
                    Intent intent2 = new Intent("PlayStreamEPGActivityProgramAndMessageReceiver");
                    intent2.putExtra("what", "msg");
                    intent2.putExtra("success", "1");
                    intent2.putExtra("msg_txt", str4);
                    c.a(OTRApp.f29417G).c(intent2);
                } else if (q0.q().a("ORT_isCategoriesActivityVisible", false)) {
                    Intent intent3 = new Intent("CategoriesActivityProgramAndMessageReceiver");
                    intent3.putExtra("what", "msg");
                    intent3.putExtra("success", "1");
                    intent3.putExtra("msg_txt", str4);
                    c.a(OTRApp.f29417G).c(intent3);
                } else {
                    Intent intent4 = new Intent("CategoriesActivityProgramAndMessageReceiver");
                    intent4.putExtra("what", "msg");
                    intent4.putExtra("success", "1");
                    intent4.putExtra("msg_txt", str4);
                    c.a(OTRApp.f29417G).c(intent4);
                }
            } else {
                str2 = "/message";
            }
            if (str.equals(str6 + "/restartapp")) {
                String str8 = b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + "/restartapp";
                bVar.getClass();
                b.e("Restarting! Please wait 5 Seconds", str8);
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC3002q(context, 4), 2000);
            }
            if (str.equals(str6 + "/deletedcache")) {
                String str9 = b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + "/deletedcache";
                bVar.getClass();
                b.e("Request sent. Restarting! Please wait 5 Seconds", str9);
                Methods.z(OTRApp.f29417G);
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC3002q(context, 3), 5000L);
            }
            if (str.equals(str6 + "/getappinfo")) {
                b.e(b.c(context), b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + "/appinfo");
            }
            if (str.equals(str6 + "/parentalpass")) {
                String str10 = b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + "/parentalpass";
                bVar.getClass();
                b.e("Parental Password has been reset to 0000", str10);
                SharedPreferences.Editor editorEdit4 = b.f25588d.edit();
                editorEdit4.putString("parental_contorl", "0000");
                editorEdit4.remove("parental_recovery");
                editorEdit4.apply();
            }
            if (str.equals(str6 + "/resetplayer")) {
                b.a(bVar, context, b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + "/resetplayer");
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str6);
            String str11 = str2;
            sb.append(str11);
            if (str.equals(sb.toString())) {
                b.a(bVar, context, b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + b.f25589e + str11);
            }
        } catch (JSONException unused) {
        }
    }
}

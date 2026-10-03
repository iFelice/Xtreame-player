package pe.hf.black20.util;

import A0.O;
import Z6.C;
import Z6.C0470b;
import Z6.s;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.format.DateFormat;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import b7.ViewOnClickListenerC0556w0;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.google.protobuf.U2;
import h7.f;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import okhttp3.HttpUrl;
import p000a.r;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.R;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.services.RecordingServices;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class Methods {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SharedPreferences f29416a;

    static {
        System.loadLibrary("native-lib");
        new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        f29416a = OTRApp.f29417G.getSharedPreferences("pe.hf.black20", 0);
    }

    public static boolean A(File file) {
        if (file == null || !file.isDirectory()) {
            if (file == null || !file.isFile()) {
                return false;
            }
            return file.delete();
        }
        for (String str : file.list()) {
            if (!A(new File(file, str))) {
                return false;
            }
        }
        return file.delete();
    }

    public static void B() {
        try {
            File file = new File(String.valueOf(OTRApp.f29417G.getFilesDir()).concat("/epg.xml"));
            if (file.exists()) {
                Log.d("XCIPTV_TAG", "Methods - epg.xml Exist and deleted.");
                file.delete();
            }
        } catch (Exception e8) {
            Log.e("XCIPTV_TAG", "Methods - Exception while deleting file " + e8.getMessage());
        }
    }

    public static void C(File file) throws FileNotFoundException {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                C(file2);
            }
        }
        if (file.delete()) {
            return;
        }
        throw new FileNotFoundException("Unable to delete: " + file);
    }

    public static String D(int i8) {
        int iFloor = (int) Math.floor((i8 % 3600) / 60);
        return O.B(HttpUrl.FRAGMENT_ENCODE_SET + ((int) Math.floor(i8 / 3600)), " hr ", HttpUrl.FRAGMENT_ENCODE_SET + iFloor, " min");
    }

    public static boolean E(Activity activity, String str) {
        String string;
        try {
            PackageManager packageManager = activity.getPackageManager();
            string = packageManager.getApplicationLabel(packageManager.getApplicationInfo("pe.hf.black20", 0)).toString();
        } catch (PackageManager.NameNotFoundException unused) {
            string = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        return string.equals(str);
    }

    public static String F() {
        return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
    }

    public static String G() {
        return U2.A(new SimpleDateFormat("yyyyMMddHH").format(new Date()), "0000");
    }

    public static String H() {
        return new SimpleDateFormat("MMM dd, yyyy HH:mm").format(new Date());
    }

    public static String I(String str, String str2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd, yyyy HH:mm");
        try {
            Date date = simpleDateFormat.parse(str);
            Date date2 = simpleDateFormat.parse(str2);
            if (date.after(date2)) {
                return "larger";
            }
            if (date.before(date2)) {
                return "smaller";
            }
            if (date == date2) {
                return "equal";
            }
        } catch (ParseException unused) {
        }
        return "d1d2";
    }

    public static String J() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(OTRApp.f29417G.getResources(), R.drawable.logo);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapDecodeResource.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return String.valueOf(byteArrayOutputStream.toByteArray().length / 1024);
    }

    public static String K() {
        return String.valueOf(Calendar.getInstance().get(2) + 1);
    }

    public static ArrayList L(Activity activity) {
        SharedPreferences sharedPreferences = activity.getSharedPreferences("pe.hf.black20", 0);
        ArrayList arrayList = new ArrayList();
        Gson gson = new Gson();
        String string = sharedPreferences.getString("tv_arraylist_search", null);
        if (sharedPreferences.contains("tv_arraylist_search")) {
            return string.isEmpty() ? new ArrayList() : (ArrayList) gson.fromJson(string, new TypeToken<ArrayList<HashMap<String, String>>>() { // from class: pe.hf.black20.util.Methods.1
            }.getType());
        }
        return arrayList;
    }

    public static String M(String str) {
        StatFs statFs = new StatFs(str);
        long availableBlocksLong = (statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        long blockCountLong = (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        String str2 = String.valueOf(availableBlocksLong) + "MB";
        String str3 = String.valueOf(blockCountLong) + "MB";
        if (availableBlocksLong > 1024) {
            str2 = String.valueOf(availableBlocksLong / 1024) + "GB";
        }
        if (blockCountLong > 1024) {
            str3 = String.valueOf(blockCountLong / 1024) + "GB";
        }
        return U2.m("Total: ", str3, "  Free: ", str2);
    }

    public static boolean N(CategoriesActivity categoriesActivity) {
        int i8 = Build.VERSION.SDK_INT;
        return i8 >= 33 || i8 < 23 || categoriesActivity == null || U4.a.b(categoriesActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static boolean O() {
        return new File(String.valueOf(OTRApp.f29417G.getFilesDir()).concat("/epg.xml")).exists();
    }

    public static boolean P() {
        return Build.MODEL.contains("AFT");
    }

    public static boolean Q(ContextWrapper contextWrapper) {
        Log.d("XCIPTV_TAG", "Methods - Network Check Running-----------");
        if (!Build.BRAND.startsWith("generic") || !Build.DEVICE.startsWith("generic")) {
            String str = Build.FINGERPRINT;
            if (!str.startsWith("generic") && !str.startsWith(zzbz.UNKNOWN_CONTENT_TYPE)) {
                String str2 = Build.HARDWARE;
                if (!str2.contains("goldfish") && !str2.contains("ranchu")) {
                    String str3 = Build.MODEL;
                    if (!str3.contains("google_sdk") && !str3.contains("Emulator") && !str3.contains("Android SDK built for x86") && !Build.MANUFACTURER.contains("Genymotion")) {
                        String str4 = Build.PRODUCT;
                        if (!str4.contains("sdk_google") && !str4.contains("google_sdk") && !str4.contains("sdk") && !str4.contains("sdk_x86") && !str4.contains("vbox86p") && !str4.contains("emulator") && !str4.contains("simulator")) {
                            for (NetworkInfo networkInfo : ((ConnectivityManager) contextWrapper.getSystemService("connectivity")).getAllNetworkInfo()) {
                                if (networkInfo.isConnected()) {
                                    Log.d("XCIPTV_TAG", "Methods - Internet Connected-----------");
                                    return true;
                                }
                            }
                            return false;
                        }
                    }
                }
            }
        }
        Log.d("XCIPTV_TAG", "Methods - Running On Emulator-----------");
        return true;
    }

    public static boolean R(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
        return sharedPreferences.contains("new_layout") && sharedPreferences.getString("new_layout", null).equals("yes");
    }

    public static boolean S(Context context, Class cls) {
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService("activity")).getRunningServices(com.google.android.gms.common.api.d.API_PRIORITY_OTHER)) {
            r.q("Service:", runningServiceInfo.service.getClassName(), "XCIPTV_TAG");
            if (runningServiceInfo.service.getClassName().equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    public static boolean T(Context context) {
        return ((UiModeManager) context.getSystemService("uimode")).getCurrentModeType() == 4;
    }

    public static void U(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (sharedPreferences.contains("whichplayer_tv")) {
            editorEdit.remove("whichplayer_tv");
        }
        if (sharedPreferences.contains("whichplayer_vod")) {
            editorEdit.remove("whichplayer_vod");
        }
        if (sharedPreferences.contains("whichplayer_series")) {
            editorEdit.remove("whichplayer_series");
        }
        if (sharedPreferences.contains("whichplayer_catchup")) {
            editorEdit.remove("whichplayer_catchup");
        }
        if (sharedPreferences.contains("streamFormat")) {
            editorEdit.remove("streamFormat");
        }
        if (sharedPreferences.contains("exo_hw")) {
            editorEdit.remove("exo_hw");
        }
        if (sharedPreferences.contains("vlc_hw")) {
            editorEdit.remove("vlc_hw");
        }
        if (sharedPreferences.contains("last_volume")) {
            editorEdit.remove("last_volume");
        }
        if (sharedPreferences.contains("plyer_exo_buffer")) {
            editorEdit.remove("plyer_exo_buffer");
        }
        if (sharedPreferences.contains("plyer_vlc_buffer")) {
            editorEdit.remove("plyer_vlc_buffer");
        }
        if (sharedPreferences.contains("video_resize_exo")) {
            editorEdit.remove("video_resize_exo");
        }
        if (sharedPreferences.contains("video_resize_vlc")) {
            editorEdit.remove("video_resize_vlc");
        }
        if (sharedPreferences.contains("video_subtiltes_exo")) {
            editorEdit.remove("video_subtiltes_exo");
        }
        if (sharedPreferences.contains("video_subtiltes_vlc")) {
            editorEdit.remove("video_subtiltes_vlc");
        }
        editorEdit.apply();
    }

    public static void V(SplashActivity splashActivity) {
        SharedPreferences sharedPreferences = splashActivity.getSharedPreferences("pe.hf.black20", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (sharedPreferences.contains("language")) {
            editorEdit.remove("language");
        }
        if (sharedPreferences.contains("load_last_channel")) {
            editorEdit.remove("load_last_channel");
        }
        U(splashActivity);
    }

    public static void W(Context context, Class cls) {
        if (S(context, cls)) {
            return;
        }
        try {
            context.startService(new Intent(context, (Class<?>) cls));
        } catch (IllegalStateException unused) {
            Log.d("XCIPTV_TAG", "OTR Service startService failed with IllegalStateException");
        }
    }

    public static void X(Context context) {
        if (q0.q().a("ORT_isRecordingRunning", false)) {
            return;
        }
        c7.c cVar = new c7.c(context, 2);
        new ArrayList().clear();
        ArrayList arrayListB0 = cVar.b0("Scheduled");
        for (int i8 = 0; i8 < arrayListB0.size(); i8++) {
            if (H().equals(((f) arrayListB0.get(i8)).f25459g) || I(H(), ((f) arrayListB0.get(i8)).f25459g).equals("smaller")) {
                if (S(context, RecordingServices.class)) {
                    return;
                }
                W(context, RecordingServices.class);
                return;
            }
        }
        cVar.close();
        Y(context, RecordingServices.class);
    }

    public static void Y(Context context, Class cls) {
        if (S(context, cls)) {
            context.stopService(new Intent(context, (Class<?>) cls));
        }
    }

    public static String a(int i8) {
        return String.format("%02d:%02d:%02d", Integer.valueOf(i8 / 3600), Integer.valueOf((i8 % 3600) / 60), Integer.valueOf(i8 % 60));
    }

    public static String b(String str, String str2) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date2 = null;
        try {
            date = simpleDateFormat.parse(str);
            try {
                date2 = simpleDateFormat.parse(str2);
            } catch (ParseException unused) {
            }
        } catch (ParseException unused2) {
            date = null;
        }
        if (date.after(date2)) {
            return "larger";
        }
        return date.before(date2) ? "smaller" : "d1d2";
    }

    public static String c(String str) {
        int i8;
        int i9;
        C0470b c0470bA = C0470b.a("yyyyMMddHHmmss Z");
        C0470b c0470bA2 = C0470b.a("yyyyMMddHHmmss");
        C0470b c0470b = (C0470b) C0470b.f8488I.a("Z", Locale.getDefault());
        long jCurrentTimeMillis = System.currentTimeMillis();
        C c8 = c0470b.f8489G;
        Calendar calendar = Calendar.getInstance(c8.f8477H, c8.f8478I);
        calendar.setTimeInMillis(jCurrentTimeMillis);
        StringBuilder sb = new StringBuilder(c8.f8480K);
        for (s sVar : c8.f8479J) {
            sVar.a(sb, calendar);
        }
        String string = sb.toString();
        String[] strArrSplit = str.split(" ");
        new Date();
        new Date();
        try {
            long time = c0470bA.b(str).getTime() - c0470bA.b(strArrSplit[0] + " " + string).getTime();
            i8 = ((int) time) / 3600000;
            try {
                i9 = ((int) (time % ((long) 3600000))) / 60000;
            } catch (ParseException e8) {
                e = e8;
                e.printStackTrace();
                i9 = 0;
            }
        } catch (ParseException e9) {
            e = e9;
            i8 = 0;
        }
        try {
            Date dateB = c0470bA2.b(strArrSplit[0]);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(dateB);
            calendar2.add(11, i8);
            calendar2.add(12, i9);
            return c0470bA2.f8489G.c(calendar2.getTime());
        } catch (ParseException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public static String d(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(f29416a.getString("timezone", null)));
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException unused) {
        }
        TimeZone timeZone = TimeZone.getTimeZone(TimeZone.getDefault().getID());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpleDateFormat2.setTimeZone(timeZone);
        return simpleDateFormat2.format(date);
    }

    public static String e(int i8) {
        char[] charArray = "ABCDEF2GHJKL345MNPQR678STUVWXYZ9".toCharArray();
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i9 = 0; i9 < i8; i9++) {
            sb.append(charArray[random.nextInt(charArray.length)]);
        }
        return sb.toString();
    }

    public static String encryptionSHA1(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.reset();
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            for (int i8 = 0; i8 < bArrDigest.length; i8++) {
                if (Integer.toHexString(bArrDigest[i8] & 255).length() == 1) {
                    stringBuffer.append("0");
                    stringBuffer.append(Integer.toHexString(bArrDigest[i8] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(bArrDigest[i8] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException unused) {
            return "0";
        }
    }

    public static String f(Activity activity) {
        String string = activity.getSharedPreferences("pe.hf.black20", 0).getString("parental_recovery", null);
        String str = String.valueOf((int) string.charAt(0)) + ((int) string.charAt(string.length() - 1));
        Log.d("XCIPTV_TAG", "Methods - Recovery Key -- ".concat(string));
        return str;
    }

    public static String g(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b8 : bArrDigest) {
                stringBuffer.append(Integer.toHexString((b8 & 255) | 256).substring(1, 3));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static String getSHA1(Signature signature) {
        return encryptionSHA1(signature.toByteArray());
    }

    public static String gsigf() {
        try {
            return getSHA1(OTRApp.f29417G.getPackageManager().getPackageInfo("pe.hf.black20", 64).signatures[0]).toUpperCase();
        } catch (Exception unused) {
            return "0";
        }
    }

    public static int h(Date date, Date date2) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            long time = date2.getTime() - date.getTime();
            if (time < 0) {
                time = (simpleDateFormat.parse("24:00").getTime() - date.getTime()) + (date2.getTime() - simpleDateFormat.parse("00:00").getTime());
            }
            long j8 = time - ((long) (((int) (time / 86400000)) * 86400000));
            int i8 = (int) (j8 / 3600000);
            return (i8 * 60) + (((int) (j8 - ((long) (3600000 * i8)))) / 60000);
        } catch (ParseException unused) {
            return 0;
        }
    }

    public static int i(Date date, Date date2, SimpleDateFormat simpleDateFormat) {
        try {
            long time = date2.getTime() - date.getTime();
            if (time < 0) {
                time = (simpleDateFormat.parse("24:00").getTime() - date.getTime()) + (date2.getTime() - simpleDateFormat.parse("00:00").getTime());
            }
            int i8 = (int) (time / 86400000);
            long j8 = time - ((long) (86400000 * i8));
            int i9 = (int) (j8 / 3600000);
            int i10 = ((int) (j8 - ((long) (3600000 * i9)))) / 60000;
            Log.i("XCIPTV_TAG", "Days: " + i8 + ", Hours: " + i9 + ", Mins: " + i10);
            return (i9 * 60) + i10 + (i8 * 1440);
        } catch (ParseException unused) {
            return 0;
        }
    }

    public static int j(Date date, Date date2) {
        long time = date2.getTime() - date.getTime();
        return (int) (((time / 86400000) * 24) + ((time % 86400000) / 3600000));
    }

    public static int k(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                long j8 = Long.parseLong(str) * 1000;
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
                return (int) ((simpleDateFormat.parse(simpleDateFormat.format(new Date(j8))).getTime() - simpleDateFormat.parse(simpleDateFormat.format(new Date())).getTime()) / 86400000);
            } catch (Exception e8) {
                Log.e("XCIPTV_TAG", "accountExpireInDays: " + e8.getMessage());
            }
        }
        return 0;
    }

    public static void l(Context context, String str) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText("OK");
        button.setOnClickListener(new ViewOnClickListenerC0556w0(alertDialogCreate, 1));
        alertDialogCreate.show();
    }

    public static void m(Context context, String str) {
        int i8;
        int i9 = 0;
        SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
        if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("timeShiftHR", "0");
            editorEdit.putString("timeShiftMin", "0");
            editorEdit.apply();
            editorEdit.commit();
            return;
        }
        String string = sharedPreferences.getString("timezone", null);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        Date date = new Date();
        String str2 = simpleDateFormat.format(date);
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone(string));
        String str3 = simpleDateFormat2.format(date);
        try {
            long time = simpleDateFormat2.parse(str2).getTime() - simpleDateFormat.parse(str2).getTime();
            i8 = ((int) time) / 3600000;
            try {
                i9 = ((int) (time % ((long) 3600000))) / 60000;
            } catch (ParseException unused) {
            }
        } catch (ParseException unused2) {
            i8 = 0;
        }
        Log.d("XCIPTV_TAG", "Methods - current_datetime_phone_timezone--" + str2 + " current_datetime_xc_timezone-" + str3);
        StringBuilder sb = new StringBuilder("Methods - current_datetime_XC--");
        sb.append(string);
        Log.d("XCIPTV_TAG", sb.toString());
        Log.d("XCIPTV_TAG", "Methods - current_datetime_hr : " + i8);
        Log.d("XCIPTV_TAG", "Methods - current_datetime_min : " + i9);
        if (!sharedPreferences.contains("timeShiftHR")) {
            SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
            editorEdit2.putString("timeShiftHR", String.valueOf(i8));
            editorEdit2.putString("timeShiftMin", String.valueOf(i9));
            editorEdit2.apply();
            editorEdit2.commit();
            return;
        }
        if (str.equals("yes")) {
            SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
            editorEdit3.putString("timeShiftHR", String.valueOf(i8));
            editorEdit3.putString("timeShiftMin", String.valueOf(i9));
            editorEdit3.apply();
            editorEdit3.commit();
        }
    }

    public static String[] n(int i8, String str) {
        int i9;
        int i10;
        String str2;
        String str3 = HttpUrl.FRAGMENT_ENCODE_SET;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss Z");
        String str4 = new SimpleDateFormat("Z", Locale.getDefault()).format(Long.valueOf(System.currentTimeMillis()));
        String[] strArrSplit = str.split(" ");
        String str5 = simpleDateFormat.format(new Date());
        String[] strArrSplit2 = str.split(" ");
        new Date();
        new Date();
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMddHHmmss");
        try {
            long time = simpleDateFormat.parse(str5).getTime() - simpleDateFormat.parse(strArrSplit2[0] + " " + strArrSplit[1]).getTime();
            i9 = ((int) time) / 3600000;
            try {
                i10 = ((int) (time % ((long) 3600000))) / 60000;
            } catch (ParseException unused) {
                i10 = 0;
            }
        } catch (ParseException unused2) {
            i9 = 0;
        }
        try {
            Date date = simpleDateFormat2.parse(strArrSplit2[0]);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(11, i9);
            calendar.add(12, i10);
            str2 = strArrSplit2[1].equals(str4) ? simpleDateFormat2.format(new Date()) : simpleDateFormat2.format(calendar.getTime());
            try {
                Date date2 = simpleDateFormat2.parse(strArrSplit2[0]);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTime(date2);
                calendar2.add(11, i9 + i8);
                str3 = simpleDateFormat2.format(calendar2.getTime());
            } catch (ParseException unused3) {
            }
        } catch (ParseException unused4) {
            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sbL = r.l(str2, " ");
        sbL.append(strArrSplit[1]);
        String string = sbL.toString();
        StringBuilder sbL2 = r.l(str3, " ");
        sbL2.append(strArrSplit[1]);
        return new String[]{string, sbL2.toString()};
    }

    public static String o(String str) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM dd, HH:mm");
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            date = null;
        }
        return simpleDateFormat2.format(date);
    }

    public static String p(String str) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM dd, hh:mm a");
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            date = null;
        }
        return simpleDateFormat2.format(date);
    }

    public static String q(String str) {
        try {
            return new SimpleDateFormat("h:mm a").format(new SimpleDateFormat("yyyyMMddHHmmss").parse(str));
        } catch (ParseException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public static String r(Context context, String str, String str2) {
        context.getSharedPreferences("pe.hf.black20", 0);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
        try {
            return new SimpleDateFormat("H:mm").format(simpleDateFormat.parse(str));
        } catch (ParseException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public static String s(String str) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMddHHmmss");
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            date = null;
        }
        return simpleDateFormat2.format(date);
    }

    public static String t(String str) {
        try {
            return String.valueOf(DateFormat.format("MMMM dd, yyyy HH:mm", Long.parseLong(str) * 1000));
        } catch (Exception unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public static String u(String str) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM dd, yyyy HH:mm");
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            date = null;
        }
        return simpleDateFormat2.format(date);
    }

    public static String v(String str) {
        Date date = new Date((Long.parseLong(str) / 1000) * 1000);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss Z");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT-4"));
        return simpleDateFormat.format(date);
    }

    public static String w(String str) {
        Date date = new Date((Long.parseLong(str) / 1000) * 1000);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd, yyyy");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT-4"));
        return simpleDateFormat.format(date);
    }

    public static String x(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
        try {
            return new SimpleDateFormat("yyyy").format(simpleDateFormat.parse(str));
        } catch (ParseException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public static String y(String str) {
        return new String(Base64.decode(str.getBytes(StandardCharsets.UTF_8), 0));
    }

    public static void z(Context context) {
        Log.d("XCIPTV_TAG", "deleteCache");
        try {
            A(context.getCacheDir());
            SharedPreferences.Editor editorEdit = f29416a.edit();
            editorEdit.remove("cached_login_response");
            editorEdit.remove("cache_timestamp");
            editorEdit.apply();
        } catch (Exception e8) {
            Log.d("XCIPTV_TAG", String.valueOf(e8));
        }
    }
}

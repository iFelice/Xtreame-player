.class public final Lcom/google/android/gms/internal/ads/Ub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Wb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ub;->G:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ub;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ub;->I:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ub;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/preference/ui/debug/DebugActivity;LR5/b;Landroid/widget/EditText;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ub;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ub;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ub;->I:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ub;->J:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/Ub;->G:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ub;->J:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ub;->I:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ub;->H:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v1, LU5/a;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, LR5/b;

    .line 17
    .line 18
    check-cast p2, Landroid/widget/EditText;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast v1, Lcom/preference/ui/debug/DebugActivity;

    .line 29
    .line 30
    :try_start_0
    iget-object p2, v1, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 31
    .line 32
    invoke-virtual {p2, v0, p1}, LP0/j;->a(LR5/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const-string p1, "you have entered an incorrect value"

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    check-cast p2, Lcom/google/android/gms/internal/ads/Wb;

    .line 48
    .line 49
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Wb;->K:Landroid/app/Activity;

    .line 50
    .line 51
    const-string v2, "download"

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/app/DownloadManager;

    .line 58
    .line 59
    :try_start_1
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    new-instance v2, Landroid/app/DownloadManager$Request;

    .line 64
    .line 65
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v1, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 75
    .line 76
    .line 77
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 78
    .line 79
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_1
    const-string p1, "Could not store picture."

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/x;->l(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/google/android/gms/internal/ads/Qb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Rb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Rb;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Qb;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qb;->H:Lcom/google/android/gms/internal/ads/Rb;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/Qb;->G:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Qb;->H:Lcom/google/android/gms/internal/ads/Rb;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p1, "Operation denied by user."

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/x;->l(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v0, "android.intent.action.EDIT"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "title"

    .line 31
    .line 32
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Rb;->L:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v0, "eventLocation"

    .line 38
    .line 39
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Rb;->P:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string v0, "description"

    .line 45
    .line 46
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Rb;->O:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/Rb;->M:J

    .line 52
    .line 53
    const-wide/16 v2, -0x1

    .line 54
    .line 55
    cmp-long v4, v0, v2

    .line 56
    .line 57
    if-lez v4, :cond_0

    .line 58
    .line 59
    const-string v4, "beginTime"

    .line 60
    .line 61
    invoke-virtual {p1, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/Rb;->N:J

    .line 65
    .line 66
    cmp-long v4, v0, v2

    .line 67
    .line 68
    if-lez v4, :cond_1

    .line 69
    .line 70
    const-string v2, "endTime"

    .line 71
    .line 72
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    :cond_1
    const/high16 v0, 0x10000000

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 81
    .line 82
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 83
    .line 84
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Rb;->K:Landroid/app/Activity;

    .line 85
    .line 86
    invoke-static {p2, p1}, Lo3/O;->p(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

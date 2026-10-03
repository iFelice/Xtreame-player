.class public final synthetic Lcom/google/android/gms/internal/ads/nh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/oh;

.field public final synthetic I:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/oh;Ljava/lang/Throwable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/nh;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nh;->H:Lcom/google/android/gms/internal/ads/oh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nh;->I:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nh;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nh;->I:Ljava/lang/Throwable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nh;->H:Lcom/google/android/gms/internal/ads/oh;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->D9:Lcom/google/android/gms/internal/ads/J7;

    .line 14
    .line 15
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 16
    .line 17
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/oh;->a:Landroid/content/Context;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Bc;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/oh;->i:Lcom/google/android/gms/internal/ads/Cc;

    .line 38
    .line 39
    const-string v2, "AttributionReporting.getUpdatedUrlAndRegisterSource"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/oh;->h:Lcom/google/android/gms/internal/ads/Cc;

    .line 50
    .line 51
    const-string v2, "AttributionReportingSampled.getUpdatedUrlAndRegisterSource"

    .line 52
    .line 53
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->D9:Lcom/google/android/gms/internal/ads/J7;

    .line 61
    .line 62
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 63
    .line 64
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 65
    .line 66
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/oh;->a:Landroid/content/Context;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Bc;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/oh;->i:Lcom/google/android/gms/internal/ads/Cc;

    .line 85
    .line 86
    const-string v2, "AttributionReporting"

    .line 87
    .line 88
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/oh;->h:Lcom/google/android/gms/internal/ads/Cc;

    .line 97
    .line 98
    const-string v2, "AttributionReportingSampled"

    .line 99
    .line 100
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

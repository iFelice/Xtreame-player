.class public final synthetic Lcom/google/android/gms/internal/measurement/Y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/measurement/Y1;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Y1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/measurement/Y1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/Y1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lc4/K0;

    .line 10
    .line 11
    iget-object v1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    iget-object v2, v1, Lc4/l0;->M:Lc4/h;

    .line 16
    .line 17
    sget-object v3, Lc4/E;->k1:Lc4/D;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v2, "IABTCF_TCString change picked up in listener."

    .line 24
    .line 25
    const-string v3, "IABTCF_TCString"

    .line 26
    .line 27
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 28
    .line 29
    const-wide/16 v4, 0x1f4

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, v1, Lc4/T;->T:Lc4/Q;

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lc4/K0;->b0:Lc4/F0;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v4, v5}, Lc4/p;->c(J)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const-string v0, "IABTCF_gdprApplies"

    .line 63
    .line 64
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    const-string v0, "IABTCF_EnableAdvertiserConsentMode"

    .line 71
    .line 72
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    :cond_1
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, v1, Lc4/T;->T:Lc4/Q;

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Lc4/K0;->b0:Lc4/F0;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v4, v5}, Lc4/p;->c(J)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/Y1;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lcom/google/android/gms/internal/measurement/Z1;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/Do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LM3/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LM3/a;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/Do;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Do;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Do;->b:LM3/a;

    .line 9
    .line 10
    iput p3, p0, Lcom/google/android/gms/internal/ads/Do;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Do;->a:I

    .line 2
    .line 3
    const-string v1, "ls"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/ads/Do;->c:I

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Do;->b:LM3/a;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Do;->d:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v5, Lcom/google/android/gms/internal/ads/lp;

    .line 16
    .line 17
    check-cast v4, Lcom/google/android/gms/internal/ads/Jc;

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/ep;

    .line 20
    .line 21
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/lp;->d:Lcom/google/android/gms/internal/ads/EJ;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/ads/Hp;

    .line 28
    .line 29
    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/internal/ads/Hp;->z3(Lcom/google/android/gms/internal/ads/Jc;I)Lcom/google/android/gms/internal/ads/JB;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :pswitch_0
    check-cast v5, Lcom/google/android/gms/internal/ads/Ko;

    .line 35
    .line 36
    check-cast v4, Lcom/google/android/gms/internal/ads/Wc;

    .line 37
    .line 38
    check-cast p1, Ljava/lang/Throwable;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p1, v4, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Ko;->e:Lcom/google/android/gms/internal/ads/EJ;

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/Gp;

    .line 59
    .line 60
    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/internal/ads/Gp;->B3(Lcom/google/android/gms/internal/ads/Wc;I)LD4/b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Lcom/google/android/gms/internal/ads/Co;

    .line 65
    .line 66
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/Co;-><init>(Lcom/google/android/gms/internal/ads/Wc;I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Ko;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :pswitch_1
    check-cast v5, Lcom/google/android/gms/internal/ads/Eo;

    .line 77
    .line 78
    check-cast v4, Lcom/google/android/gms/internal/ads/Wc;

    .line 79
    .line 80
    check-cast p1, Lcom/google/android/gms/internal/ads/ep;

    .line 81
    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object p1, v4, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Eo;->d:Lcom/google/android/gms/internal/ads/EJ;

    .line 95
    .line 96
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/google/android/gms/internal/ads/Gp;

    .line 101
    .line 102
    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/internal/ads/Gp;->A3(Lcom/google/android/gms/internal/ads/Wc;I)Lcom/google/android/gms/internal/ads/Fw;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Lcom/google/android/gms/internal/ads/Co;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/ads/Co;-><init>(Lcom/google/android/gms/internal/ads/Wc;I)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Eo;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 113
    .line 114
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

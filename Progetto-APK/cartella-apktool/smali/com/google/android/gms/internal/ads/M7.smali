.class public final synthetic Lcom/google/android/gms/internal/ads/M7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gz;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/O7;

.field public final synthetic H:Lcom/google/android/gms/internal/ads/K7;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/O7;Lcom/google/android/gms/internal/ads/K7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M7;->G:Lcom/google/android/gms/internal/ads/O7;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/M7;->H:Lcom/google/android/gms/internal/ads/K7;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/M7;->G:Lcom/google/android/gms/internal/ads/O7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/O7;->e:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/M7;->H:Lcom/google/android/gms/internal/ads/K7;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    iget v2, v1, Lcom/google/android/gms/internal/ads/J7;->e:I

    .line 10
    .line 11
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/K7;->b:Ljava/lang/String;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/K7;->e()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/K7;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/K7;->e()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/K7;->e()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/K7;->e()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

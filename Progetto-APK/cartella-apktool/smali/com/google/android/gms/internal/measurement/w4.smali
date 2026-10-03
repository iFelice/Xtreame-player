.class public final Lcom/google/android/gms/internal/measurement/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/v4;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/W1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/S1;->a()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lo3/G;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v0, v2, v2}, Lo3/G;-><init>(Landroid/net/Uri;ZZ)V

    .line 9
    .line 10
    .line 11
    const-string v0, "measurement.collection.enable_session_stitching_token.client.dev"

    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Lo3/G;->g(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/W1;

    .line 14
    .line 15
    .line 16
    const-string v0, "measurement.session_stitching_token_enabled"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v0, v3}, Lo3/G;->g(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/W1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/measurement/w4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 24
    .line 25
    const-string v0, "measurement.link_sst_to_sid"

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lo3/G;->g(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/W1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

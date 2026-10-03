.class public final Ll3/N0;
.super Ll3/B;
.source "SourceFile"


# instance fields
.field public final synthetic G:Ll3/O0;


# direct methods
.method public synthetic constructor <init>(Ll3/O0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll3/N0;->G:Ll3/O0;

    .line 2
    .line 3
    invoke-direct {p0}, Ll3/B;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final H0(Ll3/b1;I)V
    .locals 1

    .line 1
    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 2
    .line 3
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lp3/d;->b:LE1/W;

    .line 7
    .line 8
    new-instance p2, La/f;

    .line 9
    .line 10
    const/16 v0, 0x14

    .line 11
    .line 12
    invoke-direct {p2, p0, v0}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final q0(Ll3/b1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Ll3/N0;->H0(Ll3/b1;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.class public abstract Lx0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "media3.decoder.av1"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lx0/b;

    .line 7
    .line 8
    const-string v1, "gav1JNI"

    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v2, v1}, Lx0/b;-><init>(I[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lx0/c;->a:Lx0/b;

    .line 19
    .line 20
    return-void
.end method

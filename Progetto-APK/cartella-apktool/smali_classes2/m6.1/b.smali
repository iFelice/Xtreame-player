.class public abstract Lm6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LZ5/m;

.field public static final b:Lm6/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LZ5/m;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, LZ5/m;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lm6/b;->a:LZ5/m;

    .line 9
    .line 10
    new-instance v0, Lm6/a;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lm6/a;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lm6/b;->b:Lm6/a;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

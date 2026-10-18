.class public final Lo6/a;
.super Lm2/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final a:Lo6/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo6/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo6/a;->a:Lo6/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final d(Lg6/a;)V
    .locals 1

    .line 1
    sget-object v0, Ll6/a;->G:Ll6/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lg6/a;->b(Li6/b;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lg6/a;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

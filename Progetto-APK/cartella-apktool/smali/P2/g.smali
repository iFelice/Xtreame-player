.class public abstract LP2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf/v;

.field public static final b:Lf/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/v;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lf/v;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LP2/g;->a:Lf/v;

    .line 8
    .line 9
    new-instance v0, Lf/v;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Lf/v;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, LP2/g;->b:Lf/v;

    .line 16
    .line 17
    return-void
.end method

.class public Ljp/f4samurai/thinkingdata/ThinkingDataHelper;
.super Ljava/lang/Object;
.source "ThinkingDataHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThinkingDataHelper"

.field private static sAppActivity:Ljp/f4samurai/AppActivity;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsAppActivity()Ljp/f4samurai/AppActivity;
    .locals 1

    sget-object v0, Ljp/f4samurai/thinkingdata/ThinkingDataHelper;->sAppActivity:Ljp/f4samurai/AppActivity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljp/f4samurai/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljp/f4samurai/AppActivity;

    sput-object v0, Ljp/f4samurai/thinkingdata/ThinkingDataHelper;->sAppActivity:Ljp/f4samurai/AppActivity;

    return-void
.end method

.method public static _login()V
    .locals 0
    return-void
.end method

.method public static initialize()V
    .locals 0
    return-void
.end method

.method public static login(Ljava/lang/String;)V
    .locals 0
    return-void
.end method

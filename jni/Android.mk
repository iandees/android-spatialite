
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := iconv
LOCAL_CFLAGS    := \
	-Wno-multichar \
	-D_ANDROID \
	-DLIBDIR="\"c\"" \
	-DBUILDING_LIBICONV \
	-DIN_LIBRARY
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libiconv-1.13.1 \
	$(LOCAL_PATH)/libiconv-1.13.1/include \
	$(LOCAL_PATH)/libiconv-1.13.1/lib \
	$(LOCAL_PATH)/libiconv-1.13.1/libcharset/include
LOCAL_SRC_FILES := \
	libiconv-1.13.1/lib/iconv.c \
	libiconv-1.13.1/lib/relocatable.c \
	libiconv-1.13.1/libcharset/lib/localcharset.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := proj
# this list was generated with:
#   find proj-4.7.0/ -name "*.c" | grep -Ev "tests|doc" | sort | awk '{ print "\t"$1" \\" }'
LOCAL_C_INCLUDES := $(LOCAL_PATH)/proj-4.7.0/src
LOCAL_LDLIBS := -lm
LOCAL_SRC_FILES := \
	proj-4.7.0/src/aasincos.c \
	proj-4.7.0/src/adjlon.c \
	proj-4.7.0/src/bch2bps.c \
	proj-4.7.0/src/bchgen.c \
	proj-4.7.0/src/biveval.c \
	proj-4.7.0/src/cs2cs.c \
	proj-4.7.0/src/dmstor.c \
	proj-4.7.0/src/emess.c \
	proj-4.7.0/src/gen_cheb.c \
	proj-4.7.0/src/geocent.c \
	proj-4.7.0/src/geod.c \
	proj-4.7.0/src/geod_for.c \
	proj-4.7.0/src/geod_inv.c \
	proj-4.7.0/src/geod_set.c \
	proj-4.7.0/src/jniproj.c \
	proj-4.7.0/src/mk_cheby.c \
	proj-4.7.0/src/nad2bin.c \
	proj-4.7.0/src/nad2nad.c \
	proj-4.7.0/src/nad_cvt.c \
	proj-4.7.0/src/nad_init.c \
	proj-4.7.0/src/nad_intr.c \
	proj-4.7.0/src/PJ_aea.c \
	proj-4.7.0/src/PJ_aeqd.c \
	proj-4.7.0/src/PJ_airy.c \
	proj-4.7.0/src/PJ_aitoff.c \
	proj-4.7.0/src/pj_apply_gridshift.c \
	proj-4.7.0/src/PJ_august.c \
	proj-4.7.0/src/pj_auth.c \
	proj-4.7.0/src/PJ_bacon.c \
	proj-4.7.0/src/PJ_bipc.c \
	proj-4.7.0/src/PJ_boggs.c \
	proj-4.7.0/src/PJ_bonne.c \
	proj-4.7.0/src/PJ_cass.c \
	proj-4.7.0/src/PJ_cc.c \
	proj-4.7.0/src/PJ_cea.c \
	proj-4.7.0/src/PJ_chamb.c \
	proj-4.7.0/src/PJ_collg.c \
	proj-4.7.0/src/PJ_crast.c \
	proj-4.7.0/src/pj_datums.c \
	proj-4.7.0/src/pj_datum_set.c \
	proj-4.7.0/src/PJ_denoy.c \
	proj-4.7.0/src/pj_deriv.c \
	proj-4.7.0/src/PJ_eck1.c \
	proj-4.7.0/src/PJ_eck2.c \
	proj-4.7.0/src/PJ_eck3.c \
	proj-4.7.0/src/PJ_eck4.c \
	proj-4.7.0/src/PJ_eck5.c \
	proj-4.7.0/src/pj_ellps.c \
	proj-4.7.0/src/pj_ell_set.c \
	proj-4.7.0/src/PJ_eqc.c \
	proj-4.7.0/src/PJ_eqdc.c \
	proj-4.7.0/src/pj_errno.c \
	proj-4.7.0/src/pj_factors.c \
	proj-4.7.0/src/PJ_fahey.c \
	proj-4.7.0/src/PJ_fouc_s.c \
	proj-4.7.0/src/pj_fwd.c \
	proj-4.7.0/src/PJ_gall.c \
	proj-4.7.0/src/pj_gauss.c \
	proj-4.7.0/src/pj_geocent.c \
	proj-4.7.0/src/PJ_geos.c \
	proj-4.7.0/src/PJ_gins8.c \
	proj-4.7.0/src/PJ_gnom.c \
	proj-4.7.0/src/PJ_gn_sinu.c \
	proj-4.7.0/src/PJ_goode.c \
	proj-4.7.0/src/pj_gridinfo.c \
	proj-4.7.0/src/pj_gridlist.c \
	proj-4.7.0/src/PJ_gstmerc.c \
	proj-4.7.0/src/PJ_hammer.c \
	proj-4.7.0/src/PJ_hatano.c \
	proj-4.7.0/src/PJ_imw_p.c \
	proj-4.7.0/src/pj_init.c \
	proj-4.7.0/src/pj_initcache.c \
	proj-4.7.0/src/pj_inv.c \
	proj-4.7.0/src/PJ_krovak.c \
	proj-4.7.0/src/PJ_labrd.c \
	proj-4.7.0/src/PJ_laea.c \
	proj-4.7.0/src/PJ_lagrng.c \
	proj-4.7.0/src/PJ_larr.c \
	proj-4.7.0/src/PJ_lask.c \
	proj-4.7.0/src/pj_latlong.c \
	proj-4.7.0/src/PJ_lcca.c \
	proj-4.7.0/src/PJ_lcc.c \
	proj-4.7.0/src/pj_list.c \
	proj-4.7.0/src/PJ_loxim.c \
	proj-4.7.0/src/PJ_lsat.c \
	proj-4.7.0/src/pj_malloc.c \
	proj-4.7.0/src/PJ_mbtfpp.c \
	proj-4.7.0/src/PJ_mbtfpq.c \
	proj-4.7.0/src/PJ_mbt_fps.c \
	proj-4.7.0/src/PJ_merc.c \
	proj-4.7.0/src/PJ_mill.c \
	proj-4.7.0/src/pj_mlfn.c \
	proj-4.7.0/src/PJ_mod_ster.c \
	proj-4.7.0/src/PJ_moll.c \
	proj-4.7.0/src/pj_msfn.c \
	proj-4.7.0/src/pj_mutex.c \
	proj-4.7.0/src/PJ_nell.c \
	proj-4.7.0/src/PJ_nell_h.c \
	proj-4.7.0/src/PJ_nocol.c \
	proj-4.7.0/src/PJ_nsper.c \
	proj-4.7.0/src/PJ_nzmg.c \
	proj-4.7.0/src/PJ_ob_tran.c \
	proj-4.7.0/src/PJ_ocea.c \
	proj-4.7.0/src/PJ_oea.c \
	proj-4.7.0/src/PJ_omerc.c \
	proj-4.7.0/src/pj_open_lib.c \
	proj-4.7.0/src/PJ_ortho.c \
	proj-4.7.0/src/pj_param.c \
	proj-4.7.0/src/pj_phi2.c \
	proj-4.7.0/src/PJ_poly.c \
	proj-4.7.0/src/pj_pr_list.c \
	proj-4.7.0/src/PJ_putp2.c \
	proj-4.7.0/src/PJ_putp3.c \
	proj-4.7.0/src/PJ_putp4p.c \
	proj-4.7.0/src/PJ_putp5.c \
	proj-4.7.0/src/PJ_putp6.c \
	proj-4.7.0/src/pj_qsfn.c \
	proj-4.7.0/src/pj_release.c \
	proj-4.7.0/src/PJ_robin.c \
	proj-4.7.0/src/PJ_rpoly.c \
	proj-4.7.0/src/PJ_sconics.c \
	proj-4.7.0/src/PJ_somerc.c \
	proj-4.7.0/src/PJ_sterea.c \
	proj-4.7.0/src/PJ_stere.c \
	proj-4.7.0/src/pj_strerrno.c \
	proj-4.7.0/src/PJ_sts.c \
	proj-4.7.0/src/PJ_tcc.c \
	proj-4.7.0/src/PJ_tcea.c \
	proj-4.7.0/src/PJ_tmerc.c \
	proj-4.7.0/src/PJ_tpeqd.c \
	proj-4.7.0/src/pj_transform.c \
	proj-4.7.0/src/pj_tsfn.c \
	proj-4.7.0/src/pj_units.c \
	proj-4.7.0/src/PJ_urm5.c \
	proj-4.7.0/src/PJ_urmfps.c \
	proj-4.7.0/src/pj_utils.c \
	proj-4.7.0/src/PJ_vandg2.c \
	proj-4.7.0/src/PJ_vandg4.c \
	proj-4.7.0/src/PJ_vandg.c \
	proj-4.7.0/src/PJ_wag2.c \
	proj-4.7.0/src/PJ_wag3.c \
	proj-4.7.0/src/PJ_wag7.c \
	proj-4.7.0/src/PJ_wink1.c \
	proj-4.7.0/src/PJ_wink2.c \
	proj-4.7.0/src/pj_zpoly1.c \
	proj-4.7.0/src/proj.c \
	proj-4.7.0/src/proj_mdist.c \
	proj-4.7.0/src/proj_rouss.c \
	proj-4.7.0/src/p_series.c \
	proj-4.7.0/src/rtodms.c \
	proj-4.7.0/src/vector1.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := geos
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/geos-3.2.2/source/headers
LOCAL_CFLAGS   := $(LOCAL_C_INCLUDES:%=-I%)
LOCAL_CXX      := g++

LOCAL_SRC_FILES := \
	geos-3.2.2/capi/geos_ts_c.cpp \
	geos-3.2.2/capi/geos_c.cpp \
	geos-3.2.2/source/operation/buffer/RightmostEdgeFinder.cpp \
	geos-3.2.2/source/operation/buffer/BufferParameters.cpp \
	geos-3.2.2/source/operation/buffer/BufferInputLineSimplifier.cpp \
	geos-3.2.2/source/operation/buffer/BufferBuilder.cpp \
	geos-3.2.2/source/operation/buffer/OffsetCurveSetBuilder.cpp \
	geos-3.2.2/source/operation/buffer/BufferSubgraph.cpp \
	geos-3.2.2/source/operation/buffer/BufferOp.cpp \
	geos-3.2.2/source/operation/buffer/OffsetCurveBuilder.cpp \
	geos-3.2.2/source/operation/buffer/SubgraphDepthLocater.cpp \
	geos-3.2.2/source/operation/union/CascadedPolygonUnion.cpp \
	geos-3.2.2/source/operation/linemerge/EdgeString.cpp \
	geos-3.2.2/source/operation/linemerge/LineMergeGraph.cpp \
	geos-3.2.2/source/operation/linemerge/LineMergeEdge.cpp \
	geos-3.2.2/source/operation/linemerge/LineMergeDirectedEdge.cpp \
	geos-3.2.2/source/operation/linemerge/LineMerger.cpp \
	geos-3.2.2/source/operation/linemerge/LineSequencer.cpp \
	geos-3.2.2/source/operation/GeometryGraphOperation.cpp \
	geos-3.2.2/source/operation/overlay/LineBuilder.cpp \
	geos-3.2.2/source/operation/overlay/PointBuilder.cpp \
	geos-3.2.2/source/operation/overlay/validate/FuzzyPointLocator.cpp \
	geos-3.2.2/source/operation/overlay/validate/OffsetPointGenerator.cpp \
	geos-3.2.2/source/operation/overlay/validate/OverlayResultValidator.cpp \
	geos-3.2.2/source/operation/overlay/MaximalEdgeRing.cpp \
	geos-3.2.2/source/operation/overlay/snap/LineStringSnapper.cpp \
	geos-3.2.2/source/operation/overlay/snap/SnapIfNeededOverlayOp.cpp \
	geos-3.2.2/source/operation/overlay/snap/SnapOverlayOp.cpp \
	geos-3.2.2/source/operation/overlay/snap/GeometrySnapper.cpp \
	geos-3.2.2/source/operation/overlay/OverlayNodeFactory.cpp \
	geos-3.2.2/source/operation/overlay/ElevationMatrix.cpp \
	geos-3.2.2/source/operation/overlay/ElevationMatrixCell.cpp \
	geos-3.2.2/source/operation/overlay/OverlayOp.cpp \
	geos-3.2.2/source/operation/overlay/MinimalEdgeRing.cpp \
	geos-3.2.2/source/operation/overlay/PolygonBuilder.cpp \
	geos-3.2.2/source/operation/overlay/EdgeSetNoder.cpp \
	geos-3.2.2/source/operation/predicate/RectangleContains.cpp \
	geos-3.2.2/source/operation/predicate/RectangleIntersects.cpp \
	geos-3.2.2/source/operation/predicate/SegmentIntersectionTester.cpp \
	geos-3.2.2/source/operation/valid/TopologyValidationError.cpp \
	geos-3.2.2/source/operation/valid/RepeatedPointTester.cpp \
	geos-3.2.2/source/operation/valid/IsValidOp.cpp \
	geos-3.2.2/source/operation/valid/ConsistentAreaTester.cpp \
	geos-3.2.2/source/operation/valid/SweeplineNestedRingTester.cpp \
	geos-3.2.2/source/operation/valid/QuadtreeNestedRingTester.cpp \
	geos-3.2.2/source/operation/valid/IndexedNestedRingTester.cpp \
	geos-3.2.2/source/operation/valid/ConnectedInteriorTester.cpp \
	geos-3.2.2/source/operation/valid/SimpleNestedRingTester.cpp \
	geos-3.2.2/source/operation/distance/GeometryLocation.cpp \
	geos-3.2.2/source/operation/distance/ConnectedElementPointFilter.cpp \
	geos-3.2.2/source/operation/distance/ConnectedElementLocationFilter.cpp \
	geos-3.2.2/source/operation/distance/DistanceOp.cpp \
	geos-3.2.2/source/operation/polygonize/PolygonizeGraph.cpp \
	geos-3.2.2/source/operation/polygonize/PolygonizeDirectedEdge.cpp \
	geos-3.2.2/source/operation/polygonize/Polygonizer.cpp \
	geos-3.2.2/source/operation/polygonize/EdgeRing.cpp \
	geos-3.2.2/source/operation/polygonize/PolygonizeEdge.cpp \
	geos-3.2.2/source/operation/IsSimpleOp.cpp \
	geos-3.2.2/source/operation/relate/RelateNodeGraph.cpp \
	geos-3.2.2/source/operation/relate/RelateOp.cpp \
	geos-3.2.2/source/operation/relate/RelateNodeFactory.cpp \
	geos-3.2.2/source/operation/relate/EdgeEndBuilder.cpp \
	geos-3.2.2/source/operation/relate/EdgeEndBundleStar.cpp \
	geos-3.2.2/source/operation/relate/RelateNode.cpp \
	geos-3.2.2/source/operation/relate/EdgeEndBundle.cpp \
	geos-3.2.2/source/operation/relate/RelateComputer.cpp \
	geos-3.2.2/source/io/WKBWriter.cpp \
	geos-3.2.2/source/io/ByteOrderValues.cpp \
	geos-3.2.2/source/io/WKTReader.cpp \
	geos-3.2.2/source/io/WKTWriter.cpp \
	geos-3.2.2/source/io/WKBReader.cpp \
	geos-3.2.2/source/io/StringTokenizer.cpp \
	geos-3.2.2/source/io/Writer.cpp \
	geos-3.2.2/source/io/ParseException.cpp \
	geos-3.2.2/source/io/ByteOrderDataInStream.cpp \
	geos-3.2.2/source/io/CLocalizer.cpp \
	geos-3.2.2/source/io/Unload.cpp \
	geos-3.2.2/source/noding/IntersectionFinderAdder.cpp \
	geos-3.2.2/source/noding/Octant.cpp \
	geos-3.2.2/source/noding/BasicSegmentString.cpp \
	geos-3.2.2/source/noding/NodingValidator.cpp \
	geos-3.2.2/source/noding/SegmentString.cpp \
	geos-3.2.2/source/noding/OrientedCoordinateArray.cpp \
	geos-3.2.2/source/noding/IteratedNoder.cpp \
	geos-3.2.2/source/noding/MCIndexNoder.cpp \
	geos-3.2.2/source/noding/ScaledNoder.cpp \
	geos-3.2.2/source/noding/snapround/HotPixel.cpp \
	geos-3.2.2/source/noding/snapround/SimpleSnapRounder.cpp \
	geos-3.2.2/source/noding/snapround/MCIndexPointSnapper.cpp \
	geos-3.2.2/source/noding/snapround/MCIndexSnapRounder.cpp \
	geos-3.2.2/source/noding/FastNodingValidator.cpp \
	geos-3.2.2/source/noding/SegmentNodeList.cpp \
	geos-3.2.2/source/noding/IntersectionAdder.cpp \
	geos-3.2.2/source/noding/SegmentStringUtil.cpp \
	geos-3.2.2/source/noding/SegmentIntersectionDetector.cpp \
	geos-3.2.2/source/noding/NodedSegmentString.cpp \
	geos-3.2.2/source/noding/SegmentNode.cpp \
	geos-3.2.2/source/noding/SimpleNoder.cpp \
	geos-3.2.2/source/noding/FastSegmentSetIntersectionFinder.cpp \
	geos-3.2.2/source/noding/SingleInteriorIntersectionFinder.cpp \
	geos-3.2.2/source/noding/MCIndexSegmentSetMutualIntersector.cpp \
	geos-3.2.2/source/linearref/LocationIndexOfLine.cpp \
	geos-3.2.2/source/linearref/LengthLocationMap.cpp \
	geos-3.2.2/source/linearref/LinearIterator.cpp \
	geos-3.2.2/source/linearref/LocationIndexOfPoint.cpp \
	geos-3.2.2/source/linearref/LinearLocation.cpp \
	geos-3.2.2/source/linearref/LinearGeometryBuilder.cpp \
	geos-3.2.2/source/linearref/ExtractLineByLocation.cpp \
	geos-3.2.2/source/linearref/LengthIndexOfPoint.cpp \
	geos-3.2.2/source/linearref/LengthIndexedLine.cpp \
	geos-3.2.2/source/geom/MultiPolygon.cpp \
	geos-3.2.2/source/geom/GeometryCollection.cpp \
	geos-3.2.2/source/geom/LineSegment.cpp \
	geos-3.2.2/source/geom/prep/PreparedLineStringIntersects.cpp \
	geos-3.2.2/source/geom/prep/PreparedGeometry.cpp \
	geos-3.2.2/source/geom/prep/PreparedLineString.cpp \
	geos-3.2.2/source/geom/prep/PreparedPolygonContains.cpp \
	geos-3.2.2/source/geom/prep/PreparedPolygonPredicate.cpp \
	geos-3.2.2/source/geom/prep/PreparedPolygon.cpp \
	geos-3.2.2/source/geom/prep/PreparedPolygonContainsProperly.cpp \
	geos-3.2.2/source/geom/prep/AbstractPreparedPolygonContains.cpp \
	geos-3.2.2/source/geom/prep/PreparedPolygonIntersects.cpp \
	geos-3.2.2/source/geom/prep/PreparedPoint.cpp \
	geos-3.2.2/source/geom/prep/PreparedGeometryFactory.cpp \
	geos-3.2.2/source/geom/prep/PreparedPolygonCovers.cpp \
	geos-3.2.2/source/geom/prep/BasicPreparedGeometry.cpp \
	geos-3.2.2/source/geom/Point.cpp \
	geos-3.2.2/source/geom/LinearRing.cpp \
	geos-3.2.2/source/geom/IntersectionMatrix.cpp \
	geos-3.2.2/source/geom/CoordinateArraySequenceFactory.cpp \
	geos-3.2.2/source/geom/MultiLineString.cpp \
	geos-3.2.2/source/geom/PrecisionModel.cpp \
	geos-3.2.2/source/geom/CoordinateSequenceFactory.cpp \
	geos-3.2.2/source/geom/GeometryComponentFilter.cpp \
	geos-3.2.2/source/geom/CoordinateSequence.cpp \
	geos-3.2.2/source/geom/Geometry.cpp \
	geos-3.2.2/source/geom/CoordinateArraySequence.cpp \
	geos-3.2.2/source/geom/util/ShortCircuitedGeometryVisitor.cpp \
	geos-3.2.2/source/geom/util/ComponentCoordinateExtracter.cpp \
	geos-3.2.2/source/geom/util/GeometryTransformer.cpp \
	geos-3.2.2/source/geom/util/GeometryCombiner.cpp \
	geos-3.2.2/source/geom/util/GeometryEditor.cpp \
	geos-3.2.2/source/geom/util/CoordinateOperation.cpp \
	geos-3.2.2/source/geom/Location.cpp \
	geos-3.2.2/source/geom/GeometryList.cpp \
	geos-3.2.2/source/geom/LineString.cpp \
	geos-3.2.2/source/geom/MultiPoint.cpp \
	geos-3.2.2/source/geom/Polygon.cpp \
	geos-3.2.2/source/geom/Triangle.cpp \
	geos-3.2.2/source/geom/Dimension.cpp \
	geos-3.2.2/source/geom/Coordinate.cpp \
	geos-3.2.2/source/geom/Envelope.cpp \
	geos-3.2.2/source/geom/GeometryFactory.cpp \
	geos-3.2.2/source/planargraph/Subgraph.cpp \
	geos-3.2.2/source/planargraph/DirectedEdgeStar.cpp \
	geos-3.2.2/source/planargraph/Node.cpp \
	geos-3.2.2/source/planargraph/PlanarGraph.cpp \
	geos-3.2.2/source/planargraph/NodeMap.cpp \
	geos-3.2.2/source/planargraph/DirectedEdge.cpp \
	geos-3.2.2/source/planargraph/Edge.cpp \
	geos-3.2.2/source/planargraph/algorithm/ConnectedSubgraphFinder.cpp \
	geos-3.2.2/source/geomgraph/Position.cpp \
	geos-3.2.2/source/geomgraph/EdgeIntersectionList.cpp \
	geos-3.2.2/source/geomgraph/DirectedEdgeStar.cpp \
	geos-3.2.2/source/geomgraph/EdgeEnd.cpp \
	geos-3.2.2/source/geomgraph/EdgeNodingValidator.cpp \
	geos-3.2.2/source/geomgraph/Node.cpp \
	geos-3.2.2/source/geomgraph/EdgeList.cpp \
	geos-3.2.2/source/geomgraph/Quadrant.cpp \
	geos-3.2.2/source/geomgraph/Depth.cpp \
	geos-3.2.2/source/geomgraph/TopologyLocation.cpp \
	geos-3.2.2/source/geomgraph/Label.cpp \
	geos-3.2.2/source/geomgraph/PlanarGraph.cpp \
	geos-3.2.2/source/geomgraph/NodeMap.cpp \
	geos-3.2.2/source/geomgraph/EdgeIntersection.cpp \
	geos-3.2.2/source/geomgraph/GraphComponent.cpp \
	geos-3.2.2/source/geomgraph/index/SegmentIntersector.cpp \
	geos-3.2.2/source/geomgraph/index/SweepLineEvent.cpp \
	geos-3.2.2/source/geomgraph/index/MonotoneChainEdge.cpp \
	geos-3.2.2/source/geomgraph/index/SimpleSweepLineIntersector.cpp \
	geos-3.2.2/source/geomgraph/index/SimpleEdgeSetIntersector.cpp \
	geos-3.2.2/source/geomgraph/index/MonotoneChainIndexer.cpp \
	geos-3.2.2/source/geomgraph/index/SimpleMCSweepLineIntersector.cpp \
	geos-3.2.2/source/geomgraph/index/SweepLineSegment.cpp \
	geos-3.2.2/source/geomgraph/NodeFactory.cpp \
	geos-3.2.2/source/geomgraph/DirectedEdge.cpp \
	geos-3.2.2/source/geomgraph/GeometryGraph.cpp \
	geos-3.2.2/source/geomgraph/Edge.cpp \
	geos-3.2.2/source/geomgraph/EdgeRing.cpp \
	geos-3.2.2/source/geomgraph/EdgeEndStar.cpp \
	geos-3.2.2/source/util/Profiler.cpp \
	geos-3.2.2/source/util/Assert.cpp \
	geos-3.2.2/source/util/GeometricShapeFactory.cpp \
	geos-3.2.2/source/util/math.cpp \
	geos-3.2.2/source/index/bintree/Interval.cpp \
	geos-3.2.2/source/index/bintree/Node.cpp \
	geos-3.2.2/source/index/bintree/Root.cpp \
	geos-3.2.2/source/index/bintree/Key.cpp \
	geos-3.2.2/source/index/bintree/NodeBase.cpp \
	geos-3.2.2/source/index/bintree/Bintree.cpp \
	geos-3.2.2/source/index/chain/MonotoneChain.cpp \
	geos-3.2.2/source/index/chain/MonotoneChainBuilder.cpp \
	geos-3.2.2/source/index/chain/MonotoneChainSelectAction.cpp \
	geos-3.2.2/source/index/chain/MonotoneChainOverlapAction.cpp \
	geos-3.2.2/source/index/quadtree/IntervalSize.cpp \
	geos-3.2.2/source/index/quadtree/Node.cpp \
	geos-3.2.2/source/index/quadtree/Root.cpp \
	geos-3.2.2/source/index/quadtree/Key.cpp \
	geos-3.2.2/source/index/quadtree/NodeBase.cpp \
	geos-3.2.2/source/index/quadtree/Quadtree.cpp \
	geos-3.2.2/source/index/quadtree/DoubleBits.cpp \
	geos-3.2.2/source/index/strtree/Interval.cpp \
	geos-3.2.2/source/index/strtree/STRtree.cpp \
	geos-3.2.2/source/index/strtree/AbstractNode.cpp \
	geos-3.2.2/source/index/strtree/ItemBoundable.cpp \
	geos-3.2.2/source/index/strtree/SIRtree.cpp \
	geos-3.2.2/source/index/strtree/AbstractSTRtree.cpp \
	geos-3.2.2/source/index/intervalrtree/IntervalRTreeBranchNode.cpp \
	geos-3.2.2/source/index/intervalrtree/SortedPackedIntervalRTree.cpp \
	geos-3.2.2/source/index/intervalrtree/IntervalRTreeLeafNode.cpp \
	geos-3.2.2/source/index/intervalrtree/IntervalRTreeNode.cpp \
	geos-3.2.2/source/index/sweepline/SweepLineInterval.cpp \
	geos-3.2.2/source/index/sweepline/SweepLineEvent.cpp \
	geos-3.2.2/source/index/sweepline/SweepLineIndex.cpp \
	geos-3.2.2/source/inlines.cpp \
	geos-3.2.2/source/simplify/TaggedLineStringSimplifier.cpp \
	geos-3.2.2/source/simplify/TaggedLinesSimplifier.cpp \
	geos-3.2.2/source/simplify/LineSegmentIndex.cpp \
	geos-3.2.2/source/simplify/TaggedLineString.cpp \
	geos-3.2.2/source/simplify/TopologyPreservingSimplifier.cpp \
	geos-3.2.2/source/simplify/DouglasPeuckerSimplifier.cpp \
	geos-3.2.2/source/simplify/DouglasPeuckerLineSimplifier.cpp \
	geos-3.2.2/source/simplify/TaggedLineSegment.cpp \
	geos-3.2.2/source/algorithm/InteriorPointPoint.cpp \
	geos-3.2.2/source/algorithm/MinimumDiameter.cpp \
	geos-3.2.2/source/algorithm/HCoordinate.cpp \
	geos-3.2.2/source/algorithm/locate/IndexedPointInAreaLocator.cpp \
	geos-3.2.2/source/algorithm/locate/SimplePointInAreaLocator.cpp \
	geos-3.2.2/source/algorithm/locate/PointOnGeometryLocator.cpp \
	geos-3.2.2/source/algorithm/RayCrossingCounter.cpp \
	geos-3.2.2/source/algorithm/InteriorPointLine.cpp \
	geos-3.2.2/source/algorithm/CentroidArea.cpp \
	geos-3.2.2/source/algorithm/RobustDeterminant.cpp \
	geos-3.2.2/source/algorithm/CentroidLine.cpp \
	geos-3.2.2/source/algorithm/SimplePointInRing.cpp \
	geos-3.2.2/source/algorithm/NotRepresentableException.cpp \
	geos-3.2.2/source/algorithm/BoundaryNodeRule.cpp \
	geos-3.2.2/source/algorithm/CGAlgorithms.cpp \
	geos-3.2.2/source/algorithm/CentroidPoint.cpp \
	geos-3.2.2/source/algorithm/ConvexHull.cpp \
	geos-3.2.2/source/algorithm/MCPointInRing.cpp \
	geos-3.2.2/source/algorithm/distance/DiscreteHausdorffDistance.cpp \
	geos-3.2.2/source/algorithm/distance/DistanceToPoint.cpp \
	geos-3.2.2/source/algorithm/LineIntersector.cpp \
	geos-3.2.2/source/algorithm/Angle.cpp \
	geos-3.2.2/source/algorithm/InteriorPointArea.cpp \
	geos-3.2.2/source/algorithm/SIRtreePointInRing.cpp \
	geos-3.2.2/source/algorithm/PointLocator.cpp \
	geos-3.2.2/source/precision/CommonBitsRemover.cpp \
	geos-3.2.2/source/precision/CommonBits.cpp \
	geos-3.2.2/source/precision/CommonBitsOp.cpp \
	geos-3.2.2/source/precision/EnhancedPrecisionOp.cpp \
	geos-3.2.2/source/precision/SimpleGeometryPrecisionReducer.cpp

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := spatialite
LOCAL_CFLAGS	:= -D__ANDROID__
LOCAL_LDLIBS	:= -llog
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libiconv-1.13.1/include \
	$(LOCAL_PATH)/libiconv-1.13.1/libcharset/include \
	$(LOCAL_PATH)/geos-3.2.2/source/headers \
	$(LOCAL_PATH)/geos-3.2.2/capi \
	$(LOCAL_PATH)/proj-4.7.0/src
LOCAL_SRC_FILES := \
	./libspatialite-amalgamation-2.3.1/spatialite.c
LOCAL_STATIC_LIBRARIES := geos
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE    := jsqlite
LOCAL_CFLAGS	:= -D__ANDROID__ \
	-DHAVE_SQLITE3=1 \
	-DHAVE_SQLITE3_LOAD_EXTENSION=1 \
	-DCANT_PASS_VALIST_AS_CHARPTR=1 \
	-Dfdatasync=fsync
LOCAL_LDLIBS	:= -llog
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libspatialite-amalgamation-2.3.1/headers/spatialite \
	$(LOCAL_PATH)/javasqlite-20110106/native/
LOCAL_SRC_FILES := \
	javasqlite-20110106/native/sqlite_jni.c \
	libspatialite-amalgamation-2.3.1/sqlite3.c
LOCAL_STATIC_LIBRARIES := spatialite iconv proj geos stdc++
include $(BUILD_SHARED_LIBRARY)


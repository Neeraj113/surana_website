class CategoriesController < ApplicationController
	layout 'category.html.erb'

	def prepare_meta_tags(options={})
		#Settings Breadcrumbs
		@category = {}
		@category['title'] = options[:title]

		site_name   = "Surana Sanitations"
		title       = options[:title]
		description = options[:description]
		keywords 	= options[:keywords]
		image       = options[:image] || "your-default-image-url"
		current_url = request.url
		# Let's prepare a nice set of defaults
		defaults = {
			site:           site_name,
			title:       	title,
			image:       	image,
			description: 	description,
			'google-site-verification':    'kZ-n--38610LddRUQtTzeci5Y2E8jyu1i681Oo0ll0k',
			language:    	'english',
			googlebot:   	'index, follow',
			google:      'notranslate',
			robots:      'index, follow',
			web_author:  'Surana Sanitations',
			distribution: 'global',
			rating:       'general',
			'revisit-after': '7 days',
			'geo.region': 'IN-AP',
			'geo.placename': 'Visakhapatnam',
			'geo.position': '17.712494;83.299827',
			'ICBM': '17.712494, 83.299827',
			'reply-to': '&#x73;&#x75;&#x72;&#x61;&#x6E;&#x61;&#x73;&#x61;&#x6E;&#x69;&#x74;&#x61;&#x74;&#x69;&#x6F;&#x6E;&#x73;&#x40;&#x67;&#x6D;&#x61;&#x69;&#x6C;&#x2E;&#x63;&#x6F;&#x6D;',
			abstract:    'House of Tiles, Sanitaryware & Bathroom Fittings',
			reverse:     true,
			keywords:    %w[web software development mobile app],
			twitter: {
				site_name: site_name,
				site: '@suranasanitary',
				card: 'Summary',
				domain: request.protocol + request.host_with_port,
				description: description,
				image: image,
				creator: '@suranasanitary',
				url: current_url,
				title: title + ' | Dealers | Surana Sanitations | Visakhapatnam'
			},
			og: {
				url: current_url,
				site_name: site_name,
				title: title +  '| Dealers | Surana Sanitations | Visakhapatnam',
				image: image,
				description: description,
				type: 'Product'
			}
		}

		options.reverse_merge!(defaults)
		set_meta_tags options
	end

	def index
		prepare_meta_tags title: "Tiles, Sanitaryware, Pipes, Bathroom Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "House Of Tiles, CP Fittings, Sanitaryware & Plumbing Items",
		                reverse: false
	end

	def about_us
		prepare_meta_tags title: "About Us",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "House of Tiles, Sanitaryware, Plumbing and Accessory Items in Visakhapatnam #SuranaSanitations"
	end
	
	def bathroom_accessories
		prepare_meta_tags title: "Bathroom Accessories",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "bathroom accessories, bin with paddle, Towel Holder, hand drayers, soap dispenser, Paper Towel dispenser, bathroom accessories, bathroom products, buy bathroom accessories, For your Bathroom, Bathroom Accessories Sets, Stainless Steel Bathroom Accessories, Modern and Designer Accessories for Bathroom, Bathroom Accessories, Mirrors, Bath Set, toothbrush holder, soap dishes, soap dispenser, cotton swabs, bathroom sets, dealer, dealers, distributor, distributors, vizag, visakhapatnam, andhra pradesh, jaquar, bright, prayag, bathking, xen, seiko, suppliers, exporters, traders, retailers, producers",
		                description: "Jaquar, Prayag, Bathking, Xen, Seiko, Bright(Lion,BSP,Amar) Brands | Bathroom Accessories | Surana Sanitations| Visakhapatnam"
	end

	def bathroom_fittings
		prepare_meta_tags title: "Bathroom Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "jaquar, cera, bright, shakti, prayag, faucet, kitchen faucets, kitchen sink faucets, sink faucets, water faucet, water tap, bathroom taps, basin taps, tap online, sensor taps, sink taps, dealers, distributor, vizag, visakhapatnam",
		                description: "Jaquar, Cera, Bright(Lion, BSP, Amar), Prayag, Shakti Brands | Bathroom Fittings | Surana Sanitations | Visakhapatnam"
	end

	def bathtubs
		prepare_meta_tags title: "Bathtubs",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "bath tub, bath tubs, bathtub, bathtub price India, bathtubs India, Jaquar bathtub, Cera bathtub Jaquar bath tub, Cera bath tub, Jaquar bathtub price, Cera bathtub price, small bathtub, whirlpool tub, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera",
		                description: "Jaquar, Cera Brands | Bathtubs | Surana Sanitations | Visakhapatnam"
	end

	def brass_valves_and_fittings
		prepare_meta_tags title: "Brass Valves And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Brass Valves, suppliers, traders, dealers, retailers, producers, Industrial Valves & Valve Fittings india, dealer, dealers, distributor, distributors, vizag, visakhapatnam, surana, sanitations, brass valve,brass valves fittings, zoloto, piero, super, zoloto valve, piero valve, super valve",
		                description: "Zoloto, Bright(Lion, BSP, Amar), Peiro, Super Brands | Brass Valves & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def ci_manhole_covers
		prepare_meta_tags title: "C.I Manhole Covers",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Manhole Cover,CI Manhole Cover,Aluminum Manhole Cover,Manhole Cover,Green Braided Hose,Safety Equipment,PVC Flat Hose,MS Wire,cast iron manhole covers,cast iron manhole covers suppliers,cast iron manhole covers exporters,exporters of ci manhole covers,cast iron manhole covers exporters India,dealer,dealers,distributor,distributors,vizag,visakhapatnam,swastika,pic,surana,sanitations,cast iron manhole covers,cast iron manhole covers suppliers,cast iron manhole covers wholesalers,cast iron manhole covers wholesale suppliers,cast iron manhole covers products,cast iron manhole covers ratings,cast iron manhole covers price,cast iron manhole covers reviews,India,Cast Iron Manhole Covers Frames & Gratings ,Gratings,Storage Tank Cover,Foot Step",
		                description: "Swastika, Binayaka Brands | C.I Manhole Covers | Surana Sanitations | Visakhapatnam"
	end

	def ci_pipes_and_fittings
		prepare_meta_tags title: "C.I Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Cast Iron Fitting, suppliers, exporters, traders, retailers, producers, Pipe Fittings and Plumbing Fittings india, Cast Iron Pipes, cast iron dwv system, plumbing system, dwv pipe, dwv fittings, green building plumbing system, surana, sanitations, PIC, SON, dealer, dealers, distributor, distributors, vizag, visakhapatnam",
		                description: "P.I.C, SON Brands | C.I Pipes and Fittings | Surana Sanitations | Visakhapatnam"
	end

	def cpvc_pipes_and_fittings
		prepare_meta_tags title: "CPVC Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "CPVC Pipe Fittings, Chlorinated Polyvinyl Chloride Pipe Fittings, producers, Alloy, Metal, Plastic Pipe Fittings india, suppliers, exporters, traders, dealers, companies, retailers, producers, Andhra Pradesh, india, Plumbing, Pipes & Fittings, CPVC Pipe & Fittings, CPVC Pipes and Fittings, CPVC Pipe Fittings suppliers in Visakhapatnam, dealer, dealers, distributor, distributors, vizag, visakhapatnam, astral, ashirvad, prince",
		                description: "Astral, Ashirvad, Prince Brands | CPVC Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def gi_pipes_and_fittings
		prepare_meta_tags title: "G.I Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "GI Pipe Fitting Exporters in India, Unik Pipe Fittings, Galvanized Iron Pipe Fittings manufacturers in Inda, GI Pipe Fittings, Galvanized Iron Pipes Fitting, suppliers, exporters, traders, retailers, producers, Alloy, Metal, Malleable Iron Pipe Fitting, Malleable Iron Fittings, mi fittings, gi fittings, Galvanised, Galvanized, Elbow, Tee, Socket, Union, Hex Nipple, Back nut, Steel, Nipple, Nipples, Barrel, Indian, Standard, IS, IS1879, 1879, ISI, ISO, 9001, Flanges, Malleable Fittings, G I Fittings, Galvanized Fittings, cast iron fittings, malleable cast iron fitting, cast iron pipe fitting, malleable cast iron pipe fittings, dealer, dealers, distributor, distributors, vizag, visakhapatnam, oswal, jindal, tata, hb",
		                description: "Oswal, Jindal, H.B, Tata Brands | G.I Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def hand_dryer
		prepare_meta_tags title: "Hand Dryer",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Hand Dryers, buy Hand Dryers, buy, Automatic Hand Dryer, suppliers, exporters, traders, retailers, producers, Home Appliances & Machines india, Hand Dryers India, Automatic Hand Dryers Suppliers India, Automatic & Electric Hand Dryers Suppliers India, Commercial Bathroom Hand Dryers, Electric Hand Dryers India, Automatic Hand Dryer India, Automatic Hand Dryer, automatic hand dryers, hand dryers india, hand dryer, hand dryers india, hand dryer in india, jet hand dryers, jet hand dryer, automatic hand dryer, Hand dryer, Jaquar hand dryers, Cera hand dryers, prayag hand dryers, Imported hand dryers, Washroom Accessories, Stylish accessories, portable accessories, low cost washroom accessories, Hand Dryer Machines, jaquar, cera, prayag, imported, dealer, dealers, distributor, distributors, vizag, visakhapatnam, andhra pradesh",
		                description: "Jaquar, Cera, Imported Brands | Hand Dryer | Surana Sanitations | Visakhapatnam"
	end

	def hdpe_pipes_and_fittings
		prepare_meta_tags title: "HDPE Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "HDPE Fittings, HDPE Pipe End Long Neck, HDPE Flange Fitting, HDPE Bend Molded Fitting, HDPE Fabricated 45 Degree Bend Fitting, HDPE Spigot Tee Fitting, Molded HDPE Tee Fitting, HDPE Blind Flange Fitting, hdpe pipe fittings, hdpe pipe fitting suppliers, hdpe pipes exporters, HDPE Pipes & Butt Fusion Fittings, Elbows, Bends Tees, ISO 4427, PE 80, PE100 pipes, IS 4984 pipes, Gas Pipes, Water pipes, MDPE Pipes,  Irrigation pipes, Sprinkler, HDPE Floating Lines, Dregde pipes, HDPE Pipes Fittings , HDPE Tee, HDPE Reducer, HDPE Tail Piece, HDPE Pipe Coupler, PP HDPE Pipe Fittings, HDPE Compression Couplers, HDPE Elbow, HDPE Pipes & Fittings , HDPE Pipe, HDPE Pipes and Fittings, High-density Polyethylene Pipe, High Density Polyethylene Pipe, HDPE Coil Pipe, hdpe pipes, pe pipes, pehd pipes, pe100 pipes, polyethylene pipes, pe fittings,high density polyethylene pipes, pe100, hdpe 100 pipes, pehd pipes suppliers, hdpe pipe supplier, water, HDPE Pipe Fitting, HDPE Pipe Accessories, suppliers, exporters, traders, retailers, producers, Alloy, Metal, Plastic Pipe Fittings india, Polyethylene, pipes,pipe,hdpe,systems,fittings,system,polyethylene, hdpe coil,coil,sure loc,irrigation systems,pipe fittings,jain pvc,pressure pipes,jain pipe,casing screen,hdpe sure loc,sprinkler irrigation systems,sure loc pressure,casing screen pipe,screen pipe,quick connect pipes, dealer, dealers, distributor, distributors, vizag, visakhapatnam, reliance, tulsi",
		                description: "Reliance, Sri Tulsi Brands | HDPE Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def kitchen_sinks
		prepare_meta_tags title: "Kitchen Sinks",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Kitchen Sinks & Fittings, India, Kitchen Sinks - Kitchen Fixtures, Single Bowl, Double Bowl, 1.5 Bowl, Triple Bowl, Home & Kitchen, kitchen sink, steel kitchen sink, kitchen double sink, Nirali Stainless steel Sink, Nirali Steel Sink, Nirali Kitchen Sink, Jayna Stainless steel Sink, Jayna Steel Sink, Jayna Kitchen Sink, Chandini Stainless steel Sink, Chandini Steel Sink, Chandini Kitchen Sink, Prayag Stainless steel Sink, Prayag Steel Sink, Prayag Kitchen Sink, dealer, dealers, distributor, distributors, vizag, visakhapatnam, andhra pradesh, surana, sanitations",
		                description: "Nirali, Jayna, Chandini, Prayag Brands | Sinks | Surana Sanitations | Visakhapatnam"
	end

	def mirrors_and_cabinets
		prepare_meta_tags title: "Mirrors And Cabinets",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Bath, Bathroom Cabinets & Storage, Mirrored, Bathroom, Cabinets, bathroom cabinets, bathroom storage cabinets, bathroom cabinets india, mirror, pvc mirror, fancy mirror, bathroom mirror, dealer, dealers, distributor, distributors, vizag, visakhapatnam, andhra pradesh, prayag, sonata, cera",
		                description: "Prayag, Sonata, Cera Brands | Mirrors & Cabinets | Surana Sanitations | Visakhapatnam"
	end

	def ppr_pipes_and_fittings
		prepare_meta_tags title: "PPR Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Prince Brand | PPR Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def ptmt_fittings
		prepare_meta_tags title: "PTMT Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Prayag, Shakti, Polytuf Brands | PTMT Fittings | Surana Sanitations | Visakhapatnam"
	end

	def pvc_pipes_and_fittings
		prepare_meta_tags title: "PVC Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Sudhakar, Prince, Astral, Nandi Brands | PVC Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def sanitaryware
		prepare_meta_tags title: "Sanitaryware",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Sanitaryware, sanitary, Jaquar sanitaryware, Cera sanitaryware, sanitaryware brands, sanitary products, wash basin designs, wash basin online, basin design, bathroom basins, bathroom wash basin, small wash basin, washbasin design India, Jaquar wash basin, Cera wash basin, Jaquar basins, Cera basins, Jaquar sanitaryware price list, Cera sanitaryware price list, Jaquar wash basin price, Cera wash basin price, dealer, dealers, distributor, distributors, vizag, visakhapatnam, surana, sanitations",
		                description: "Jaquar, Cera, Parryware Brands | Sanitaryware | Surana Sanitations | Visakhapatnam"
	end

	def shower_enclosures
		prepare_meta_tags title: "Shower Enclosures",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Jaquar shower enclosure, Jaquar shower enclosures, stylish shower enclosure, modern shower enclosure, dealer, dealers, distributor, distributors, vizag, visakhapatnam",
		                description: "Jaquar Brand | Shower Enclosures | Surana Sanitations | Visakhapatnam"
	end

	def shower_panels
		prepare_meta_tags title: "Shower Panels",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "shower panels, Jaquar shower panels, Cera shower panels, bath shower panels, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera",
		                description: "Jaquar, Cera Brands | Shower Panels | Surana Sanitations | Visakhapatnam"
	end

	def swr_pipes_and_fittings
		prepare_meta_tags title: "SWR Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Drip Irrigation System, Sprinkler Irrigation Systems, upvc drainage system, swr drainage system, Underground drainage system, pipes and fittings, SWR Fitting, suppliers, exporters, traders, retailers, producers, Pipe Fittings and Plumbing Fittings india, SWR fittings, SWR Pipes & Fittings, Sewage pipes and fittings for building, SWR Pipes, SWR Pipes and Fittings, dealer, dealers, distributor, distributors, vizag, visakhapatnam, andhra pradesh, sudhakar, astral, prince",
		                description: "Sudhakar, Astral, Prince Brands | SWR Pipes & Fittings | Visakhapatnam"
	end

	def tiles
		prepare_meta_tags title: "Tiles",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Ceramic Wall Tiles, wall tiles price, bathroom wall tiles, kitchen wall tiles,  wall design patterns, ceramic wall tiles bathroom, white ceramic wall tiles, ceramic glazed wall tiles, indian bathroom designs, ceramic tile flooring installation, glazed ceramic tile flooring, ceramic tile flooring bathroom, wood tile ceramic flooring, ceramic wood tile flooring, bathroom floor tiles ideas, ceramic tile flooring ideas, bathroom ceramic tile flooring, Ceramic Floor Tiles, Tiles, Ceramic Tiles, Wall Tiles, Floor Tiles, Bathroom Tiles, Vitrified Tiles, Vitrified Floor Tiles, Bathroom floor tiles, Wall Tiles Design, Bathroom Flooring Tiles, floor tiles design, best tiles india, best floor tiles, best wall tiles, tiles living room, tiles for bedroom, tiles for bathroom, new tiles designs, latest tile designs, new wall tile designs, new floor tile designs, latest wall tile design, newest wall tile design, dealer, dealers, distributor, distributors, vizag, visakhapatnam, andhra pradesh",
		                description: "Johnson, Ardex Endura, Laticrete, Somany, Nitco, Kajaria Brands | Tiles | Surana Sanitations | Visakhapatnam"
	end

	def upvc_pipes_and_fittings
		prepare_meta_tags title: "UPVC Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "upvc pipe fittings, upvc plumbing fittings Indian companies, upvc pipes and fittings, pipe,pipes,pressure,jain,irrigation,systems,system,irrigation systems,pvc pressure,pressure pipes,quick fix,sprinkler irrigation,pvc pressure pipes,sprinkler irrigation systems,pipe pipe fittings,pvc pressure pipe,pressure pipes,pressure pipe,pvc,quick fix pvc pipe, UPVC Pipe Fitting, Adhesive Material, UPVC Brass MTA, UPVC Brass Tee, upvc pipes in india, upvc pipes & fittings, upvc pipes, upvc plumbing fittings, plumbing fittings, upvc coupler, tee, elbow, upvc end cap, male adaptor, female adaptor, upvc brass tee,tank adaptor,, Unplasticized Polyvinyl Chloride Pipe Fittings, suppliers, exporters, traders, retailers, producers, Alloy, Metal, Plastic Pipe Fittings india, dealer, dealers, distributor, distributors, vizag, visakhapatnam, kisan, astral, ashirvad, andhra pradesh",
		                description: "Kisan, Astral Brands | UPVC Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def water_heater
		prepare_meta_tags title: "Water Heater",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "water heater, water heater price, instant water heater, electric water heater, gas water heater, tankless water heater, hot water heater, best water heater, heat pump water heater, waterheater, portable water heater, geyser, gas geyser, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar",
		                description: "Jaquar Brand | Water Heater | Surana Sanitations | Visakhapatnam"
	end

	def water_tank
		prepare_meta_tags title: "Water Tank",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "Plastic Water Tank, Plastic Water Storage Tank, exporters, producers, Industrial & Shipping Containers india, Water Tanks, exporters, traders, producers, Visakhapatnam, Andhra Pradesh, india, Sintex Water Tanks, Reno Water Tanks, Renotuff Water Tanks, Sintex Water Tanks prices, Reno Water Tanks prices, Renotuf Water Tanks prices, Sintex Water Tanks dealers, Reno Water Tanks dealers, Renotuf Water Tanks dealers, Sintex Water Tanks rates, Reno Water Tanks rates, Renotuf Water Tanks rates, distributors, wholesale process, models, Water Tanks, suppliers, exporters, traders, retailers, producers, Industrial & Shipping Containers india, List of Water Tank Cleaning Services in Visakhapatnam,Visakhapatnam, Map, Address, Phone number, Contact Number, local, dealer, dealers, distributor, distributors, vizag, visakhapatnam, sintex, reno, renotuf",
		                description: "Sintex, Reno, Sudhakar Brands | Water Tank | Surana Sanitations | Visakhapatnam"
	end

	def contact
		response = verify_google_recptcha(APP_CONFIG['recaptcha_secret_key'],params[:captcha])
		IntroductionMailer.contact_form(params.as_json).deliver_later
		if response["success"]
			IntroductionMailer.introduction_email(params.as_json).deliver_later
			render json: response
		else
			render json: response
		end
	end

	private

	def verify_google_recptcha(secret_key,response)
		status = `curl "https://www.google.com/recaptcha/api/siteverify?secret=#{secret_key}&response=#{response}"`
		hash = JSON.parse(status)
		hash["success"] == true ? true : false
		hash
	end
end
